package ece558.bthornhill.edu.jumprope;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import java.util.Objects;

import static androidx.core.content.ContextCompat.getSystemService;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link GameplayFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class GameplayFragment extends Fragment implements SensorEventListener {
    private static final String TAG = "GameplayFragment";
   
    // TODO: Rename parameter arguments, choose names that match
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;

    
    //Copied these from main activity
    private SensorManager sensorManager;
    private Sensor sensor;

    private TextView x_axis, y_axis, z_axis;

    private float lastX, lastY, lastZ;
    private float deltaX = 0;
    private float deltaY = 0;
    private float deltaZ = 0;
    
    public GameplayFragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment GameplayFragment.
     */
    // TODO: Rename and change types and number of parameters
    public static GameplayFragment newInstance(String param1, String param2) {
        GameplayFragment fragment = new GameplayFragment();
        Bundle args = new Bundle();
        args.putString(ARG_PARAM1, param1);
        args.putString(ARG_PARAM2, param2);
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            mParam1 = getArguments().getString(ARG_PARAM1);
            mParam2 = getArguments().getString(ARG_PARAM2);
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View v = inflater.inflate(R.layout.fragment_gameplay, container, false);
        
        x_axis = (TextView) v.findViewById(R.id.xvalue);
        y_axis = (TextView) v.findViewById(R.id.yvalue);
        z_axis = (TextView) v.findViewById(R.id.zvalue);

        sensorManager = (SensorManager) Objects.requireNonNull(getActivity()).getSystemService(Context.SENSOR_SERVICE);
        sensor = sensorManager.getDefaultSensor(Sensor.TYPE_LINEAR_ACCELERATION);
        
        return v;
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