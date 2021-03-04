package ece558.bthornhill.edu.jumprope;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.widget.TextView;

import java.util.Objects;

public class GameplayActivity extends AppCompatActivity implements SensorEventListener {
    private static final String TAG = "GameplayActivity";

    private SensorManager sensorManager;
    private Sensor sensor;

    private TextView x_axis, y_axis, z_axis;

    private float lastX, lastY, lastZ;
    private float deltaX = 0;
    private float deltaY = 0;
    private float deltaZ = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_gameplay);

        x_axis = (TextView) findViewById(R.id.xvalue);
        y_axis = (TextView) findViewById(R.id.yvalue);
        z_axis = (TextView) findViewById(R.id.zvalue);

        sensorManager = (SensorManager) getSystemService(Context.SENSOR_SERVICE);
        sensor = sensorManager.getDefaultSensor(Sensor.TYPE_LINEAR_ACCELERATION);
    }

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