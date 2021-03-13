package ece558.bthornhill.edu.jumprope;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import com.google.firebase.auth.FirebaseAuth;

public class MenuActivity extends AppCompatActivity {

    private static final String TAG = "MainActivity";

    private Button mStartGameButton;
    private Button mCreateProfileButton;
    private Button mViewProfileButton;
    private Button mLoginButton;
    private Button mLogoutButton;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_menu);

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
                    startActivity(new Intent(MenuActivity.this, GameplayActivity.class));
                    break;
                case R.id.button_createprofile:

                    break;
                case R.id.button_viewprofile:

                    break;
                case R.id.button_login:

                    break;
                case R.id.button_logout:
                    FirebaseAuth.getInstance().signOut();
                    finish();

            }

        }
    };


}

