package ece558.bthornhill.edu.jumprope;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.Toast;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;

public class LoginActivity extends AppCompatActivity {
    private static final String TAG = "LoginActivity";

    private EditText mEmail, mPassword;
    private Button mLogin;
    private Button mCancel;
    private Button mProfile;

    private ProgressBar mProgressBar;
    private FirebaseAuth fAuth;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        mEmail = findViewById(R.id.editemail);
        mPassword = findViewById(R.id.editpassword);
        mProgressBar = findViewById(R.id.progressBar);
        fAuth = FirebaseAuth.getInstance();
        mProfile = findViewById(R.id.button_profile);
        mProfile.setOnClickListener(ButtonListener);
        mCancel = findViewById(R.id.button_cancel);
        mCancel.setOnClickListener(ButtonListener);
        mLogin = findViewById(R.id.button_login);
        mLogin.setOnClickListener(ButtonListener);

        FirebaseUser currentUser = fAuth.getCurrentUser();
        if(currentUser != null) {
            Toast.makeText(getApplicationContext(), "Already logged in", Toast.LENGTH_SHORT).show();
            startActivity(new Intent(getApplicationContext(), MainActivity.class));
            finish();
        }
    }

    View.OnClickListener ButtonListener = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent main = new Intent(LoginActivity.this, MainActivity.class);
            Intent profile = new Intent(LoginActivity.this, CreateProfileActivity.class);
            switch (v.getId()){
                case R.id.button_profile:
                    startActivity(profile);
                    break;
                case R.id.button_cancel:
                    startActivity(main);
                    break;
                case R.id.button_login:
                    authenticate();
                    break;
            }
        }
    };

    private void authenticate() {
        String email = mEmail.getText().toString().trim();
        String password = mPassword.getText().toString().trim();

        if (TextUtils.isEmpty(email)) {
            mEmail.setError("Email is required");
            return;
        }
        if (TextUtils.isEmpty(password)) {
            mPassword.setError("Password is required");
            return;
        }

        if (password.length() < 6) {
            mPassword.setError("Password must be > or = to 6 characters");
            return;
        }

        // Notify to user that account is being checked
        mProgressBar.setVisibility(View.VISIBLE);

        // Authenticate User
        fAuth.signInWithEmailAndPassword(email,password).addOnCompleteListener(new OnCompleteListener<AuthResult>() {
            @Override
            public void onComplete(@NonNull Task<AuthResult> task) {
                Log.d(TAG, "signInWithEmail:success");
                Toast.makeText(getApplicationContext(), "Successfully logged in", Toast.LENGTH_SHORT).show();
                startActivity(new Intent(getApplicationContext(), MainActivity.class));
                finish();
            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(@NonNull Exception e) {
                Log.d(TAG, "onFailure " + e.toString());
            }
        });

    };
}