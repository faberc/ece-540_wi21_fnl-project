package ece558.bthornhill.edu.jumprope;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class LoginActivity extends AppCompatActivity {
    private static final String TAG = "LoginActivity";

    private Button mLogin;
    private Button mCancel;
    private Button mProfile;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        mProfile = findViewById(R.id.button_profile);
        mProfile.setOnClickListener(ButtonListener);
        mCancel = findViewById(R.id.button_cancel);
        mCancel.setOnClickListener(ButtonListener);
        mLogin = findViewById(R.id.button_login);
        mLogin.setOnClickListener(ButtonListener);

    }

    View.OnClickListener ButtonListener = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent main = new Intent(LoginActivity.this, MainActivity.class);
            Intent profile = new Intent(LoginActivity.this, ProfileActivity.class);
            switch (v.getId()){
                case R.id.button_profile:
                    startActivity(profile);
                    break;
                case R.id.button_cancel:
                    startActivity(main);
                    break;
                case R.id.button_login:
                    // Log into account
                    break;
            }
        }
    };
}