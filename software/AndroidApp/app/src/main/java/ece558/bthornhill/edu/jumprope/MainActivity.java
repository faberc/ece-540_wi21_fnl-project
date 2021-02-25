package ece558.bthornhill.edu.jumprope;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity implements SensorEventListener{

    private static final String TAG = "MainActivity";

    private SensorManager sensorManager;
    private Sensor sensor;

    private TextView x_axis;
    private TextView y_axis;
    private TextView z_axis;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        x_axis = (TextView) findViewById(R.id.xvalue);
        y_axis = (TextView) findViewById(R.id.yvalue);
        z_axis = (TextView) findViewById(R.id.zvalue);

        sensorManager = (SensorManager) getSystemService(Context.SENSOR_SERVICE);
        sensor = sensorManager.getDefaultSensor(Sensor.TYPE_LINEAR_ACCELERATION);

    }

    @Override
    public final void onSensorChanged(SensorEvent event) {

        float amount1 = event.values[0];     // x value?
        float amount2 = event.values[1];     // y value?
        float amount3 = event.values[2];     // z value?

        Log.d(TAG, String.valueOf(amount1));
        // Do something with these sensor values

        x_axis.setText(String.valueOf(amount1));
        y_axis.setText(String.valueOf(amount2));
        z_axis.setText(String.valueOf(amount3));

    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int accuracy) {

    }

    @Override
    protected void onResume() {
        super.onResume();
        sensorManager.registerListener(this, sensor, SensorManager.SENSOR_DELAY_NORMAL);
    }

    @Override
    protected void onPause() {
        super.onPause();
        sensorManager.unregisterListener(this);
    }
}

