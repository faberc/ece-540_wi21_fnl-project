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

import com.google.firebase.auth.FirebaseAuth;

public class MainActivity extends AppCompatActivity {

    private static final String TAG = "MainActivity";

    private Button mStartGameButton;
    private Button mCreateProfileButton;
    private Button mViewProfileButton;
    private Button mLoginButton;
    private Button mLogoutButton;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        mStartGameButton =  findViewById(R.id.button_play);
        mStartGameButton.setOnClickListener(ButtonListener);
        mCreateProfileButton = findViewById(R.id.button_createprofile);
        mCreateProfileButton.setOnClickListener(ButtonListener);
        mLoginButton = findViewById(R.id.button_login);
        mLoginButton.setOnClickListener(ButtonListener);
        mLogoutButton = findViewById(R.id.button_logout);
        mLogoutButton.setOnClickListener(ButtonListener);
        mViewProfileButton = findViewById(R.id.button_viewprofile);
        mViewProfileButton.setOnClickListener(ButtonListener);


    }

    View.OnClickListener ButtonListener = new View.OnClickListener() {
        @Override
        public void onClick(View v) {

            switch (v.getId()){
                case R.id.button_play:
                    startActivity(new Intent(MainActivity.this, GameplayActivity.class));
                    break;
                case R.id.button_createprofile:
                    startActivity(new Intent(MainActivity.this, CreateProfileActivity.class));
                    break;
                case R.id.button_viewprofile:
                    startActivity(new Intent(MainActivity.this, ViewProfileActivity.class));
                    break;
                case R.id.button_login:
                    startActivity(new Intent(MainActivity.this, LoginActivity.class));
                    break;
                case R.id.button_logout:
                    FirebaseAuth.getInstance().signOut();
                    startActivity(new Intent(getApplicationContext(), LoginActivity.class));
                    finish();

            }

        }
    };


}

