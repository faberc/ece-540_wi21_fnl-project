package ece558.bthornhill.edu.jumprope;

import androidx.appcompat.app.AppCompatActivity;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattServer;
import android.bluetooth.BluetoothGattServerCallback;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothManager;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.le.AdvertiseCallback;
import android.bluetooth.le.AdvertiseData;
import android.bluetooth.le.AdvertiseSettings;
import android.bluetooth.le.BluetoothLeAdvertiser;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanCallback;
import android.content.Context;
import android.content.Intent;
import android.graphics.ColorSpace;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelUuid;
import android.util.Log;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.Objects;

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
    private float lastX, lastY, lastZ;
    private float deltaX = 0;
    private float deltaY = 0;
    private float deltaZ = 0;
    private SensorManager sensorManager;
    private Sensor sensor;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_gameplay);

        // Bluetooth initialization
        mStatusBluetooth = (TextView)findViewById(R.id.statusBluetooth);
        mBlueImage = (ImageView) findViewById(R.id.bluetoothIcon);

        // Bluetooth adapter
        mBluetoothManager = (BluetoothManager) getSystemService(Context.BLUETOOTH_SERVICE);
        mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
        mConnectedDevices = new ArrayList<BluetoothDevice>();
        mConnectedDevicesAdapter = new ArrayAdapter<BluetoothDevice>(this,
                android.R.layout.simple_list_item_1, mConnectedDevices);


        // Acceleration initialization
        x_axis = (TextView) findViewById(R.id.xvalue);
        y_axis = (TextView) findViewById(R.id.yvalue);
        z_axis = (TextView) findViewById(R.id.zvalue);
        sensorManager = (SensorManager) getSystemService(Context.SENSOR_SERVICE);
        sensor = sensorManager.getDefaultSensor(Sensor.TYPE_LINEAR_ACCELERATION);

    }

    @Override
    public void onResume() {
        super.onResume();
        sensorManager.registerListener(this, sensor, SensorManager.SENSOR_DELAY_NORMAL);

        // Check if bluetooth is available or not
        if (mBluetoothAdapter == null){
            mStatusBluetooth.setText("Device not BLE capable");
        }
        else {
            mStatusBluetooth.setText("Congrats! Device is BLE capable");
        }

        // Set image according to bluetooth status (on/off)
        // Having issues with Android studio letting me add clip art images
        if ( mBluetoothAdapter == null || !mBluetoothAdapter.isEnabled()){
            //mBlueImage.setImageResource(R.drawable.blueoff);
            //Bluetooth is available on the device and it is not enabled, enable it
            Toast.makeText(getApplicationContext(), "Turning On Bluetooth", Toast.LENGTH_SHORT).show();
            Intent i = new Intent((BluetoothAdapter.ACTION_REQUEST_ENABLE));
            startActivityForResult(i, REQUEST_ENABLE_BT);

        }
        else {
            //mBlueImage.setImageResource(R.drawable.blueon);

        }

        mBluetoothLeAdvertiser = mBluetoothAdapter.getBluetoothLeAdvertiser();
        mGattServer = mBluetoothManager.openGattServer(this, mGattServerCallback);

        initServer();
        startAdvertising();

    }

    /*
     * Create the GATT server instance, attaching all services and
     * characteristics that should be exposed
     */
    private void initServer() {
        BluetoothGattService service =new BluetoothGattService(DeviceProfile.SERVICE_UUID,
                BluetoothGattService.SERVICE_TYPE_PRIMARY);

        BluetoothGattCharacteristic elapsedCharacteristic =
                new BluetoothGattCharacteristic(DeviceProfile.CHARACTERISTIC_ELAPSED_UUID,
                        //Read-only characteristic, supports notifications
                        BluetoothGattCharacteristic.PROPERTY_READ | BluetoothGattCharacteristic.PROPERTY_NOTIFY,
                        BluetoothGattCharacteristic.PERMISSION_READ);
        BluetoothGattCharacteristic offsetCharacteristic =
                new BluetoothGattCharacteristic(DeviceProfile.CHARACTERISTIC_OFFSET_UUID,
                        //Read+write permissions
                        BluetoothGattCharacteristic.PROPERTY_READ | BluetoothGattCharacteristic.PROPERTY_WRITE,
                        BluetoothGattCharacteristic.PERMISSION_READ | BluetoothGattCharacteristic.PERMISSION_WRITE);

        service.addCharacteristic(elapsedCharacteristic);
        service.addCharacteristic(offsetCharacteristic);

        mGattServer.addService(service);
    }

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
                postDeviceChange(device, true);

            } else if (newState == BluetoothProfile.STATE_DISCONNECTED) {
                postDeviceChange(device, false);
            }
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

                    //Trigger our periodic notification once devices are connected
                    mHandler.removeCallbacks(mNotifyRunnable);
                    if (!mConnectedDevices.isEmpty()) {
                        mHandler.post(mNotifyRunnable);
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

        /* Storage and access to local characteristic data */

        private void notifyConnectedDevices() {
            for (BluetoothDevice device : mConnectedDevices) {
                BluetoothGattCharacteristic readCharacteristic = mGattServer.getService(DeviceProfile.SERVICE_UUID)
                        .getCharacteristic(DeviceProfile.CHARACTERISTIC_ELAPSED_UUID);
                readCharacteristic.setValue(getStoredValue());
                mGattServer.notifyCharacteristicChanged(device, readCharacteristic, false);
            }
        }

        private Object mLock = new Object();

        private int mTimeOffset;

        private byte[] getStoredValue() {
            synchronized (mLock) {
                return DeviceProfile.getShiftedTimeValue(mTimeOffset);
            }
        }

        private void setStoredValue(int newOffset) {
            synchronized (mLock) {
                mTimeOffset = newOffset;
            }
        }

    };

    /*
    Acceleration data processing
     */
    @Override
    public void onSensorChanged(SensorEvent event) {
        x_axis.setText(Float.toString(deltaX));
        y_axis.setText(Float.toString(deltaY));
        z_axis.setText(Float.toString(deltaZ));

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
    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int accuracy) {

    }


    @Override
    public void onPause() {
        super.onPause();
        sensorManager.unregisterListener(this);
    }
}