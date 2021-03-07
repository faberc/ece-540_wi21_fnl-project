package ece558.bthornhill.edu.jumprope;

import android.bluetooth.*;
import android.content.pm.PackageManager;
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
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;


/**
 *  Add words here about this activity
 *
 *  Bluetooth code created by Dave Smith
 */

public class GameplayActivity extends AppCompatActivity implements SensorEventListener {
    private static final String TAG = "GameplayActivity";

    // Variables for Bluetooth
    private TextView mStatusBluetooth;
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
    private float deltaX = 0;
    private float deltaY = 0;
    private float deltaZ = 0;
    private SensorManager sensorManager;
    private Sensor sensor;

    private TextView mBleStatus;
    private Switch madvertiseswitch;
    private Button msenddatabtn;

    private boolean ifSendData = false;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_gameplay);

        // Bluetooth initialization
        mBleStatus = findViewById(R.id.bleStatusText);
        mStatusBluetooth = findViewById(R.id.statusBluetooth);
        mBlueImage = findViewById(R.id.bluetoothIcon);

        // Bluetooth adapter
        mConnectedDevices = new ArrayList<BluetoothDevice>();
        mConnectedDevicesAdapter = new ArrayAdapter<BluetoothDevice>(this,
                android.R.layout.simple_list_item_1, mConnectedDevices);

        mBluetoothManager = (BluetoothManager) getSystemService(BLUETOOTH_SERVICE);
        mBluetoothAdapter = mBluetoothManager.getAdapter();


        // Acceleration initialization
        x_axis = findViewById(R.id.xvalue);
        y_axis = findViewById(R.id.yvalue);
        z_axis = findViewById(R.id.zvalue);
        sensorManager = (SensorManager) getSystemService(Context.SENSOR_SERVICE);
        sensor = sensorManager.getDefaultSensor(Sensor.TYPE_LINEAR_ACCELERATION);

        //Other initialization
        // madvertiseswitch.setOnCheckedChangeListener(SwitchListener);
        msenddatabtn = findViewById(R.id.send_data_button);
        msenddatabtn.setOnClickListener(ButtonListener);

    }

    @Override
    public void onResume() {
        super.onResume();
        sensorManager.registerListener(this, sensor, SensorManager.SENSOR_DELAY_NORMAL);
        mBluetoothAdapter.cancelDiscovery();
        mBleStatus.setText("Awaiting Connection...");

        // Set image according to bluetooth status (on/off)
        // Having issues with Android studio letting me add clip art images
        if ( mBluetoothAdapter == null || !mBluetoothAdapter.isEnabled()){
            mStatusBluetooth.setText("BT is Not Enabled...");
            mBlueImage.setImageResource(R.drawable.blue_off2);
            //Bluetooth is available on the device and it is not enabled, enable it
            // Toast.makeText(getApplicationContext(), "Turning On Bluetooth", Toast.LENGTH_SHORT).show();
            // Intent i = new Intent((BluetoothAdapter.ACTION_REQUEST_ENABLE));
            // startActivityForResult(i, REQUEST_ENABLE_BT);

            //Bluetooth is disabled
            Intent enableBtIntent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
            startActivity(enableBtIntent);
            finish();
            return;

        }
        else {
            mStatusBluetooth.setText("BT Enabled");
            mBlueImage.setImageResource(R.drawable.blue_on);
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

        mBluetoothLeAdvertiser = mBluetoothAdapter.getBluetoothLeAdvertiser();

        /*
         * Check for advertising support. Not all devices are enabled to advertise
         * Bluetooth LE data.
         */
        if (!mBluetoothAdapter.isMultipleAdvertisementSupported() && (mBluetoothLeAdvertiser == null)) {
            Toast.makeText(this, "No Advertising Support.", Toast.LENGTH_SHORT).show();
            finish();
            return;
        }


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

    /*
     * Create the GATT server instance, attaching all services and
     * characteristics that should be exposed
     */
    private void initServer() {
        BluetoothGattService service =new BluetoothGattService(DeviceProfile.SERVICE_UUID,
                BluetoothGattService.SERVICE_TYPE_PRIMARY);

        BluetoothGattCharacteristic rxCharacteristic =
                new BluetoothGattCharacteristic(DeviceProfile.CHARACTERISTIC_RX_UUID,
                        //Write only characteristics
                        BluetoothGattCharacteristic.PROPERTY_WRITE, BluetoothGattCharacteristic.PERMISSION_WRITE);

        BluetoothGattCharacteristic txCharacteristic =
                new BluetoothGattCharacteristic(DeviceProfile.CHARACTERISTIC_TX_UUID,
                        //Notify
                        BluetoothGattCharacteristic.PROPERTY_NOTIFY, BluetoothGattCharacteristic.PERMISSION_READ);

        service.addCharacteristic(rxCharacteristic);
        service.addCharacteristic(txCharacteristic);

        mGattServer.addService(service);
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
                mBlueImage.setImageResource(R.drawable.blue_on);
                mBleStatus.setText("Awaiting Connection...");
                postDeviceChange(device, false);
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

            if (DeviceProfile.CHARACTERISTIC_RX_UUID.equals(characteristic.getUuid())) {
                int newOffset = DeviceProfile.unsignedIntFromBytes(value);
                setStoredValue(newOffset);

                if (responseNeeded) {
                    mGattServer.sendResponse(device,
                            requestId,
                            BluetoothGatt.GATT_SUCCESS,
                            0,
                            value);
                }

                mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        Toast.makeText(GameplayActivity.this, "RX Packet Updated", Toast.LENGTH_SHORT).show();
                    }
                });

                notifyConnectedDevices();
            }
        }
    };

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
    /*
     * Terminate the advertiser
     */
    private void stopAdvertising() {
        if (mBluetoothLeAdvertiser == null) return;

        mBluetoothLeAdvertiser.stopAdvertising(mAdvertiseCallback);
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




    private void postDeviceChange(final BluetoothDevice device, final boolean toAdd) {
        mHandler.post(new Runnable() {
            @Override
            public void run() {
                //This will add the item to our list and update the adapter at the same time.
                if (toAdd) {
                    mConnectedDevicesAdapter.add(device);
                } else {
                    mConnectedDevicesAdapter.remove(device);
                }
            }
        });
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
        x_axis.setText(String.valueOf(deltaX));
        y_axis.setText(String.valueOf(deltaY));
        z_axis.setText(String.valueOf(deltaZ));

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

        if(ifSendData) {
            setStoredValue(raw_data);
            notifyConnectedDevices();
        }
    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int accuracy) {
    }

}