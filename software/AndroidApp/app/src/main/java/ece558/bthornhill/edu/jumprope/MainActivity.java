package ece558.bthornhill.edu.jumprope;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;

import android.content.Context;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    private static final String TAG = "MainActivity";

    private Button mStartGameButton;
    private Button mProfileButton;
    private Button mLoginButton;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        mStartGameButton = (Button) findViewById(R.id.button_play);
        mStartGameButton.setOnClickListener(ButtonListener);
        mProfileButton = (Button) findViewById(R.id.button_profile);
        mProfileButton.setOnClickListener(ButtonListener);
        mLoginButton = (Button) findViewById(R.id.button_login);
        mLoginButton.setOnClickListener(ButtonListener);


    }

    View.OnClickListener ButtonListener = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent main = new Intent(MainActivity.this, GameplayActivity.class);
            Intent profile = new Intent(MainActivity.this, ProfileActivity.class);
            Intent login = new Intent(MainActivity.this, LoginActivity.class);

            switch (v.getId()){
                case R.id.button_play:
                    startActivity(main);
                    break;
                case R.id.button_profile:
                    startActivity(profile);
                    break;
                case R.id.button_login:
                    startActivity(login);
                    break;

            }

        }
    };


}

