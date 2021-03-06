package ece558.bthornhill.edu.jumprope;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.bluetooth.BluetoothAdapter;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.Toast;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;

public class ProfileActivity extends AppCompatActivity {
    private static final String TAG = "ProfileActivity";

    private EditText mName, mEmail, mPassword;
    private Button mSave;
    private Button mCancel;
    private Button mLogin;
    FirebaseAuth fAuth;
    ProgressBar mProgressBar;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_profile);

        mName = findViewById(R.id.editname);
        mEmail = findViewById(R.id.editemail);
        mPassword = findViewById(R.id.editpassword);

        mSave = findViewById(R.id.button_save);
        mSave.setOnClickListener(ButtonListener);
        mCancel = findViewById(R.id.button_cancel);
        mCancel.setOnClickListener(ButtonListener);
        mLogin = findViewById(R.id.button_login);
        mLogin.setOnClickListener(ButtonListener);

        fAuth = FirebaseAuth.getInstance();
        mProgressBar = findViewById(R.id.progressBar);

        // Check is user is already logged in
        if(fAuth.getCurrentUser() != null){
            startActivity(new Intent(getApplicationContext(), MainActivity.class));
            finish();
        }
    }

    View.OnClickListener ButtonListener = new View.OnClickListener() {
        @Override
        public void onClick(View v) {

            switch (v.getId()){
                case R.id.button_save:
                    authenticate();
                    break;
                case R.id.button_cancel:
                    Intent main = new Intent(ProfileActivity.this, MainActivity.class);
                    startActivity(main);
                    break;
                case R.id.button_login:
                    Intent login = new Intent(ProfileActivity.this, LoginActivity.class);
                    startActivity(login);
                    break;
            }
        }
    };

    private void authenticate(){
        String name = mName.getText().toString().trim();
        String email = mEmail.getText().toString().trim();
        String password = mPassword.getText().toString().trim();

        if (TextUtils.isEmpty(name)){
            mName.setError("Name is required");
            return;
        }
        if(TextUtils.isEmpty(email)){
            mEmail.setError("Email is required");
            return;
        }
        if(TextUtils.isEmpty(password)){
            mPassword.setError("Password is required");
            return;
        }

        if(password.length() < 6){
            mPassword.setError("Password must be > or = to 6 characters");
            return;
        }

        // Notify to user that account is being saved
        mProgressBar.setVisibility(View.VISIBLE);

        // Register the user in Firebase
        fAuth.createUserWithEmailAndPassword(email,password).addOnCompleteListener(new OnCompleteListener<AuthResult>() {
            @Override
            public void onComplete(@NonNull Task<AuthResult> task) {
                if(task.isSuccessful()){
                    Toast.makeText(getApplicationContext(), "Profile saved", Toast.LENGTH_SHORT).show();
                    startActivity(new Intent(getApplicationContext(), MainActivity.class));
                }else {
                    Toast.makeText(getApplicationContext(), "Error !" +task.getException().getMessage(), Toast.LENGTH_LONG).show();
                }
            }
        });





    }
}