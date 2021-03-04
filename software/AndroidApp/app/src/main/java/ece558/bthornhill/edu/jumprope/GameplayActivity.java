package ece558.bthornhill.edu.jumprope;

import androidx.appcompat.app.AppCompatActivity;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanCallback;
import android.content.Context;
import android.graphics.ColorSpace;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.Objects;

public class GameplayActivity extends AppCompatActivity implements SensorEventListener {
    private static final String TAG = "GameplayActivity";

    // Variables for Bluetooth
    private TextView mStatusBluetooth;
    private ImageView mBlueImage;
    private BluetoothAdapter mBluetoothAdapter;
    private boolean isConnected;
    // Stops scanning after 10 seconds.
    private static final long SCAN_PERIOD = 10000;


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
        mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();

        // Check if bluetooth is available or not
        if (mBluetoothAdapter == null){
            mStatusBluetooth.setText("Bluetooth is not available");
        }
        else {
            mStatusBluetooth.setText("Bluetooth is available");
        }

        // Set image according to blutooth status (on/off)
        

        // Acceleration initialization
        x_axis = (TextView) findViewById(R.id.xvalue);
        y_axis = (TextView) findViewById(R.id.yvalue);
        z_axis = (TextView) findViewById(R.id.zvalue);
        sensorManager = (SensorManager) getSystemService(Context.SENSOR_SERVICE);
        sensor = sensorManager.getDefaultSensor(Sensor.TYPE_LINEAR_ACCELERATION);

    }

    /* Steps to follow for Blutooth
    1. Check if Bluetooth is available or not
    2. Turn on/off bluetooth
    3. Make Bluetooth discoverable
    4. Display paired/bounded devices
     */



    /*
    private BluetoothAdapter.LeScanCallback mLeScanCallback = new BluetoothAdapter.LeScanCallback() {
        @Override
        public void onLeScan(BluetoothDevice device, int rssi, byte[] scanRecord) {
            Log.d(TAG, "Device discovered");
            if (!scannedDevices.contians(device) && device.getName() != null){

            }
        }
    };
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
    public void onResume() {
        super.onResume();
        sensorManager.registerListener(this, sensor, SensorManager.SENSOR_DELAY_NORMAL);
    }

    @Override
    public void onPause() {
        super.onPause();
        sensorManager.unregisterListener(this);
    }
}