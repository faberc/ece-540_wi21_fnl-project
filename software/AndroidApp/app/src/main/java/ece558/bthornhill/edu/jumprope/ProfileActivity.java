package ece558.bthornhill.edu.jumprope;

import androidx.appcompat.app.AppCompatActivity;

import android.bluetooth.BluetoothAdapter;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class ProfileActivity extends AppCompatActivity {
    private static final String TAG = "ProfileActivity";

    private EditText mUserName;
    private Button mSave;
    private Button mCancel;
    private Button mLogin;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_profile);

        mSave = findViewById(R.id.button_save);
        mSave.setOnClickListener(ButtonListener);
        mCancel = findViewById(R.id.button_cancel);
        mCancel.setOnClickListener(ButtonListener);
        mLogin = findViewById(R.id.button_login);
        mLogin.setOnClickListener(ButtonListener);

    }

    View.OnClickListener ButtonListener = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent main = new Intent(ProfileActivity.this, MainActivity.class);
            Intent login = new Intent(ProfileActivity.this, LoginActivity.class);
            switch (v.getId()){
                case R.id.button_save:
                    // Do saving activity here
                    Toast.makeText(getApplicationContext(), "Profile saved.", Toast.LENGTH_SHORT).show();
                    break;
                case R.id.button_cancel:
                    startActivity(main);
                    break;
                case R.id.button_login:
                    startActivity(login);
                    break;
            }
        }
    };
}