package ece558.bthornhill.edu.jumprope;

import android.bluetooth.*;
import android.content.pm.PackageManager;
import android.widget.*;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.bluetooth.le.AdvertiseCallback;
import android.bluetooth.le.AdvertiseData;
import android.bluetooth.le.AdvertiseSettings;
import android.bluetooth.le.BluetoothLeAdvertiser;
import android.content.Context;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelUuid;
import android.util.Log;
import android.view.View;

import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.firestore.DocumentReference;
import com.google.firebase.firestore.DocumentSnapshot;
import com.google.firebase.firestore.FirebaseFirestore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;


/**
 *  Allows device to communicate to Nexys A7 via Bluetooth Low Energy.
 *  Accesses device's acceleration data to be used by Nexys A7 game
 *  to see if user is jumping or ducking
 *
 *  Bluetooth code created by Dave Smith
 */

public class GameplayActivity extends AppCompatActivity implements SensorEventListener {
    private static final String TAG = "GameplayActivity";

    // Variables for Firebase
    private FirebaseAuth fAuth;
    private String userId;
    private TextView user_score;
    FirebaseFirestore fStore = FirebaseFirestore.getInstance();

    // Variables for Bluetooth
    private ImageView mBlueImage;
    private BluetoothManager mBluetoothManager;
    private BluetoothAdapter mBluetoothAdapter;
    private BluetoothLeAdvertiser mBluetoothLeAdvertiser;
    private BluetoothGattServer mGattServer;
    private final static int REQUEST_ENABLE_BT = 1;
    private ArrayList<BluetoothDevice> mConnectedDevices;
    private ArrayAdapter<BluetoothDevice> mConnectedDevicesAdapter;

    // Variables for Acceleration
    private TextView x_axis, y_axis, z_axis;
    private float raw_data;
    private float lastX, lastY, lastZ;
    private EditText mAccelSum;
    private float deltaX = 0;
    private float deltaY = 0;
    private float deltaZ = 0;
    private SensorManager sensorManager;
    private Sensor sensor;

    private TextView mBleStatus;
    private Button msenddatabtn;

    private boolean ifSendData = false;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_gameplay);


        // Bluetooth initialization
        mBleStatus = findViewById(R.id.bleStatusText);
        mBlueImage = findViewById(R.id.bluetoothIcon);

        // Bluetooth adapter
        mConnectedDevices = new ArrayList<BluetoothDevice>();
        mConnectedDevicesAdapter = new ArrayAdapter<BluetoothDevice>(this,
                android.R.layout.simple_list_item_1, mConnectedDevices);

        mBluetoothManager = (BluetoothManager) getSystemService(BLUETOOTH_SERVICE);
        mBluetoothAdapter = mBluetoothManager.getAdapter();


        // Acceleration initialization
        mAccelSum = findViewById(R.id.accel_sum_val);
//        x_axis = findViewById(R.id.xvalue);
//        y_axis = findViewById(R.id.yvalue);
//        z_axis = findViewById(R.id.zvalue);

        Log.d(TAG, "onCreate: Initializing Sensor");
        sensorManager = (SensorManager) getSystemService(Context.SENSOR_SERVICE);
        sensor = sensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);     // TYPE_LINEAR_ACCELEROMETER
        sensorManager.registerListener(this, sensor, SensorManager.SENSOR_DELAY_NORMAL);

        //Other initialization
        msenddatabtn = findViewById(R.id.send_data_button);
        msenddatabtn.setOnClickListener(ButtonListener);

        // Ensure user is logged into account before proceeding
        user_score = findViewById(R.id.user_score_value);
        fAuth = FirebaseAuth.getInstance();
        FirebaseUser currentUser = fAuth.getCurrentUser();
        if(currentUser != null) {
            userId = currentUser.getUid();
            // Get and display previous high score for user
            DocumentReference documentReference = fStore.collection("users").document(userId);
            documentReference.get().addOnSuccessListener(this, new OnSuccessListener<DocumentSnapshot>() {
                @Override
                public void onSuccess(DocumentSnapshot documentSnapshot) {
                    Object scoreObj = documentSnapshot.getLong("Score");
                    user_score.setText((scoreObj.toString()));
                }
            });
        } else {
            Toast.makeText(this, "Please log in first", Toast.LENGTH_SHORT).show();
            startActivity(new Intent(GameplayActivity.this, MainActivity.class));
            return;
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        mBluetoothAdapter.cancelDiscovery();
        mBleStatus.setText("Awaiting Connection...");

        // Set image according to bluetooth status (on/off)
        if ( mBluetoothAdapter == null || !mBluetoothAdapter.isEnabled()){
            mBlueImage.setImageResource(R.drawable.blue_off2);
            //Bluetooth is available on the device and it is not enabled, enable it
            Intent enableBtIntent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
            startActivity(enableBtIntent);
            finish();
            return;

        }
        else {
            mBlueImage.setImageResource(R.drawable.blue_off);
        }

        /*
         * Check for Bluetooth LE Support.  In production, our manifest entry will keep this
         * from installing on these devices, but this will allow test devices or other
         * sideloads to report whether or not the feature exists.
         */
        if (!getPackageManager().hasSystemFeature(PackageManager.FEATURE_BLUETOOTH_LE)) {
            Toast.makeText(this, "No LE Support.", Toast.LENGTH_SHORT).show();
            finish();
            return;
        }


        /*
         * Check for advertising support. Not all devices are enabled to advertise
         * Bluetooth LE data.
         */
        if (!mBluetoothAdapter.isMultipleAdvertisementSupported()) {
            Toast.makeText(this, "No Advertising Support.", Toast.LENGTH_SHORT).show();
            finish();
            return;
        }

        mBluetoothLeAdvertiser = mBluetoothAdapter.getBluetoothLeAdvertiser();
        mGattServer = mBluetoothManager.openGattServer(this, mGattServerCallback);

        initServer();
        startAdvertising();

    }


    @Override
    public void onPause() {
        super.onPause();
        stopAdvertising();
        shutdownServer();
        sensorManager.unregisterListener(this);
    }


    /*
     * Callback handles events from the framework describing
     * if we were successful in starting the advertisement requests.
     */
    private AdvertiseCallback mAdvertiseCallback = new AdvertiseCallback() {
        @Override
        public void onStartSuccess(AdvertiseSettings settingsInEffect) {
            Log.i(TAG, "Peripheral Advertise Started.");
            postStatusMessage("GATT Server Ready");
        }

        @Override
        public void onStartFailure(int errorCode) {
            Log.w(TAG, "Peripheral Advertise Failed: "+errorCode);
            postStatusMessage("GATT Server Error "+errorCode);
        }
    };

    private Handler mHandler = new Handler(Looper.myLooper());
    private void postStatusMessage(final String message) {
        mHandler.post(new Runnable() {
            @Override
            public void run() {
                setTitle(message);
            }
        });
    }

    /*
     * Create the GATT server instance, attaching all services and
     * characteristics that should be exposed
     */
    private void initServer() {
        BluetoothGattService service =new BluetoothGattService(DeviceProfile.SERVICE_UUID,
                BluetoothGattService.SERVICE_TYPE_PRIMARY);

        BluetoothGattCharacteristic txCharacteristic =
                new BluetoothGattCharacteristic(DeviceProfile.CHARACTERISTIC_TX_UUID,
                        //Notify
                        BluetoothGattCharacteristic.PROPERTY_READ | BluetoothGattCharacteristic.PROPERTY_NOTIFY,
                        BluetoothGattCharacteristic.PERMISSION_READ);

        //Descriptor for read notifications
        BluetoothGattDescriptor TX_READ_CHAR_DESC = new BluetoothGattDescriptor(DeviceProfile.TX_READ_CHAR_DESC, DeviceProfile.DESCRIPTOR_PERMISSION);
        txCharacteristic.addDescriptor(TX_READ_CHAR_DESC);

        BluetoothGattCharacteristic rxCharacteristic =
                new BluetoothGattCharacteristic(DeviceProfile.CHARACTERISTIC_RX_UUID,
                        //Write only characteristics
                        BluetoothGattCharacteristic.PROPERTY_WRITE, BluetoothGattCharacteristic.PERMISSION_WRITE);

        service.addCharacteristic(txCharacteristic);
        service.addCharacteristic(rxCharacteristic);

        mGattServer.addService(service);
    }


    /*
     * Initialize the advertiser
     */
    private void startAdvertising() {
        if(mBluetoothLeAdvertiser == null) return;

        AdvertiseSettings settings = new AdvertiseSettings.Builder()
                .setAdvertiseMode(AdvertiseSettings.ADVERTISE_MODE_BALANCED)
                .setConnectable(true)
                .setTimeout(0)
                .setTxPowerLevel(AdvertiseSettings.ADVERTISE_TX_POWER_MEDIUM)
                .build();

        AdvertiseData data = new AdvertiseData.Builder()
                .setIncludeDeviceName(true)
                .addServiceUuid(new ParcelUuid(DeviceProfile.SERVICE_UUID))
                .build();

        mBluetoothLeAdvertiser.startAdvertising(settings, data, mAdvertiseCallback);
    }


    private void postDeviceChange(final BluetoothDevice device, final boolean toAdd) {
        mHandler.post(new Runnable() {
            @Override
            public void run() {
                //This will add the item to our list and update the adapter at the same time.
                if (toAdd) {
                    if (mConnectedDevicesAdapter.getPosition(device) < 0){
                        mConnectedDevicesAdapter.add(device);
                    }
                } else {
                    mConnectedDevicesAdapter.remove(device);
                }
            }
        });
    }

    /*
     * Terminate the server and any running callbacks
     */
    private void shutdownServer() {
        mHandler.removeCallbacks(mNotifyRunnable);

        if (mGattServer == null) return;

        mGattServer.close();
    }

    private Runnable mNotifyRunnable = new Runnable() {
        @Override
        public void run() {
            notifyConnectedDevices();
            mHandler.postDelayed(this, 2000);
        }
    };

    /*
     * Callback handles all incoming requests from GATT clients.
     * From connections to read/write requests.
     */
    private BluetoothGattServerCallback mGattServerCallback = new BluetoothGattServerCallback() {
        @Override
        public void onConnectionStateChange(BluetoothDevice device, int status, int newState) {
            super.onConnectionStateChange(device, status, newState);
            Log.i(TAG, "onConnectionStateChange "
                    + DeviceProfile.getStatusDescription(status) + " "
                    + DeviceProfile.getStateDescription(newState));

            if (newState == BluetoothProfile.STATE_CONNECTED) {
                mBlueImage.setImageResource(R.drawable.blue_connected);
                mBleStatus.setText("Device Connected!");
                postDeviceChange(device, true);
            } else if (newState == BluetoothProfile.STATE_DISCONNECTED) {
                mBlueImage.setImageResource(R.drawable.blue_off);
                mBleStatus.setText("Awaiting Connection...");
                postDeviceChange(device, false);
            }
        }

        @Override
        public void onServiceAdded(int status, BluetoothGattService service) {
            Log.d("Start", "Our gatt server service was added.");
            super.onServiceAdded(status, service);
        }

        @Override
        public void onCharacteristicReadRequest(BluetoothDevice device,
                                                int requestId,
                                                int offset,
                                                BluetoothGattCharacteristic characteristic) {
            super.onCharacteristicReadRequest(device, requestId, offset, characteristic);
            Log.d(TAG, "READ called onCharacteristicReadRequest " + characteristic.getUuid().toString());

            if (DeviceProfile.CHARACTERISTIC_TX_UUID.equals(characteristic.getUuid())) {
                mGattServer.sendResponse(device,
                        requestId,
                        BluetoothGatt.GATT_SUCCESS,
                        0,
                        getStoredValue());
            }

        }

        @Override
        public void onCharacteristicWriteRequest(BluetoothDevice device,
                                                 int requestId,
                                                 BluetoothGattCharacteristic characteristic,
                                                 boolean preparedWrite,
                                                 boolean responseNeeded,
                                                 int offset,
                                                 byte[] value) {
            super.onCharacteristicWriteRequest(device, requestId, characteristic, preparedWrite, responseNeeded, offset, value);
            Log.i(TAG, "onCharacteristicWriteRequest "+characteristic.getUuid().toString());

            ifSendData = false;

            if (DeviceProfile.CHARACTERISTIC_RX_UUID.equals(characteristic.getUuid())) {
                Log.d(TAG, "Got Value: " + bytesToHex(value));
                int newScore = Integer.parseInt(bytesToHex(value));
                Log.d(TAG, "Got Score: " + newScore);
                // Will add code here later to compare against previous high score
                int oldScore = Integer.parseInt((String) user_score.getText());
                if (newScore > oldScore ) {
                    addScoreToProfile(newScore);
                    user_score.setText(String.format("%d",newScore));
                }

                if (responseNeeded) {
                    mGattServer.sendResponse(device,
                            requestId,
                            BluetoothGatt.GATT_SUCCESS,
                            0,
                            value);
                    Log.d(TAG, "Received data on " + characteristic.getUuid().toString());
                }

                mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        Toast.makeText(GameplayActivity.this, "Sending Score to Server", Toast.LENGTH_SHORT).show();
                        if (ifSendData == false) {
                            msenddatabtn.setText("Send Data");
                        }
                    }
                });

                // notifyConnectedDevices();
            }
        }



        @Override
        public void onNotificationSent(BluetoothDevice device, int status)
        {
            Log.d("GattServer", "onNotificationSent");
            super.onNotificationSent(device, status);
        }


        @Override
        public void onDescriptorReadRequest(BluetoothDevice device, int requestId, int offset, BluetoothGattDescriptor descriptor) {
            Log.d("HELLO", "Our gatt server descriptor was read.");
            super.onDescriptorReadRequest(device, requestId, offset, descriptor);
            Log.d("DONE", "Our gatt server descriptor was read.");
        }

        @Override
        public void onDescriptorWriteRequest(BluetoothDevice device, int requestId, BluetoothGattDescriptor descriptor, boolean preparedWrite, boolean responseNeeded, int offset, byte[] value) {
            Log.d("HELLO", "Our gatt server descriptor was written.");
            super.onDescriptorWriteRequest(device, requestId, descriptor, preparedWrite, responseNeeded, offset, value);
            Log.d("DONE", "Our gatt server descriptor was written.");

            //NOTE: Its important to send response. It expects response else it will disconnect
            if (responseNeeded) {
                mGattServer.sendResponse(device,
                        requestId,
                        BluetoothGatt.GATT_SUCCESS,
                        0,
                        value);

            }

        }
    };


    /*
     * Terminate the advertiser
     */
    private void stopAdvertising() {
        if (mBluetoothLeAdvertiser == null) return;

        mBluetoothLeAdvertiser.stopAdvertising(mAdvertiseCallback);
    }


    /* Storage and access to local characteristic data */
    private void notifyConnectedDevices() {
        for (BluetoothDevice device : mConnectedDevices) {
            BluetoothGattCharacteristic txCharacteristic = mGattServer.getService(DeviceProfile.SERVICE_UUID)
                    .getCharacteristic(DeviceProfile.CHARACTERISTIC_TX_UUID);
            txCharacteristic.setValue(getStoredValue());
            mGattServer.notifyCharacteristicChanged(device, txCharacteristic, false);
        }
    }

    private Object mLock = new Object();

    private float mTxPacket;

    private byte[] getStoredValue() {
        synchronized (mLock) {
            return DeviceProfile.getDataValue(mTxPacket);
        }
    }

    private void setStoredValue(float newTxPacket) {
        synchronized (mLock) {
            mTxPacket = newTxPacket;
        }
    }


    View.OnClickListener ButtonListener = new View.OnClickListener() {
        @Override
        public void onClick(View v) {

            switch (v.getId()) {
                case R.id.send_data_button:
                    ifSendData = !ifSendData;
                    if(ifSendData) {
                        msenddatabtn.setText("Sending");
                    } else {
                        msenddatabtn.setText("Send Data");
                    }
                    break;
            }
        }
    };

    // private BluetoothConnectionCallback mBtConnectionCallback = new BluetoothConnectionCallback() {
    //     @Override
    //     public void onConnected(BluetoothDevice device, int profile) {
    //         super.onConnected(device, profile);
    //     }

    //     @Override
    //     public void onDisconnected(BluetoothDevice device, int profile) {
    //         super.onDisconnected(device, profile);
    //     }
    // };

    /*
    Acceleration data processing
     */
    @Override
    public void onSensorChanged(SensorEvent event) {
//        x_axis.setText(String.valueOf(deltaX));
//        y_axis.setText(String.valueOf(deltaY));
//        z_axis.setText(String.valueOf(deltaZ));

        deltaX = Math.abs(lastX - event.values[0]);     // x value
        deltaY = Math.abs(lastY - event.values[1]);    // y value
        deltaZ = Math.abs(lastZ - event.values[2]);     // z value

        // Filter out the noise
        if(deltaX < 2) deltaX = 0;
        if(deltaY < 2) deltaY = 0;
        if(deltaZ < 2) deltaZ = 0;

        // set the last know values of x,y,z
        lastX = event.values[0];
        lastY = event.values[1];
        lastZ = event.values[2];

        // If we send raw data over bluetooth
        raw_data = event.values[0] + event.values[1] + event.values[2];

        mAccelSum.setText(String.format("%.2f",raw_data));

        setStoredValue(raw_data);
        if(ifSendData) {
            notifyConnectedDevices();
        }
    }


    @Override
    public void onAccuracyChanged(Sensor sensor, int accuracy) {
    }


    final protected static char[] hexArray = "0123456789ABCDEF".toCharArray();

    //Helper function converts byte array to hex string
    //for printing
    public static String bytesToHex(byte[] bytes) {
        char[] hexChars = new char[bytes.length * 2];
        for ( int j = 0; j < bytes.length; j++ ) {
            int v = bytes[j] & 0xFF;
            hexChars[j * 2] = hexArray[v >>> 4];
            hexChars[j * 2 + 1] = hexArray[v & 0x0F];
        }
        return new String(hexChars);
    }


    public void addScoreToProfile(int score){
        userId = fAuth.getCurrentUser().getUid();
        DocumentReference documentReference = fStore.collection("users").document(userId);
        documentReference.update("Score", score)
                .addOnSuccessListener(new OnSuccessListener<Void>() {
                    @Override
                    public void onSuccess(Void aVoid) {
                        Log.d(TAG, "onSuccess: score is created for " + userId);
                    }
                }).addOnFailureListener(new OnFailureListener() {
                @Override
                public void onFailure(@NonNull Exception e) {
                    Log.d(TAG, "onFailure " + e.toString());
                }
            });
    }
}