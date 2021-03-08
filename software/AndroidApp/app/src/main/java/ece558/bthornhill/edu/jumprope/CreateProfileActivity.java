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
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.firestore.DocumentReference;
import com.google.firebase.firestore.FirebaseFirestore;

import java.util.HashMap;
import java.util.Map;

public class CreateProfileActivity extends AppCompatActivity {
    private static final String TAG = "CreateProfileActivity";

    private EditText mName, mEmail, mPassword;
    private Button mSave;
    private Button mCancel;
    private Button mLogin;
    FirebaseAuth fAuth;
    ProgressBar mProgressBar;
    FirebaseFirestore fStore = FirebaseFirestore.getInstance();
    String userID;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_createprofile);

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
            Toast.makeText(getApplicationContext(), "Already logged in", Toast.LENGTH_SHORT).show();
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
                    Intent main = new Intent(CreateProfileActivity.this, MainActivity.class);
                    startActivity(main);
                    break;
                case R.id.button_login:
                    Intent login = new Intent(CreateProfileActivity.this, LoginActivity.class);
                    startActivity(login);
                    break;
            }
        }
    };

    private void authenticate(){
        String name = mName.getText().toString();
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
                    Toast.makeText(getApplicationContext(), "Profile created", Toast.LENGTH_SHORT).show();
                    // Was able to create a new user so now we need to save their information to their profile
                    // Get the new user ID so we can save the information to this ID
                    userID = fAuth.getCurrentUser().getUid();
                    DocumentReference documentReference = fStore.collection("users").document(userID);
                    Map<String, Object> user = new HashMap<>();
                    user.put("Name", name);
                    user.put("Email", email);
                    documentReference.set(user).addOnSuccessListener(new OnSuccessListener<Void>() {
                        @Override
                        public void onSuccess(Void aVoid) {
                            Toast.makeText(getApplicationContext(), "User Profile saved", Toast.LENGTH_SHORT).show();
                            Log.d(TAG, "onSuccess: user profile is created for " + userID);

                        }
                    }).addOnFailureListener(new OnFailureListener() {
                        @Override
                        public void onFailure(@NonNull Exception e) {
                            Log.d(TAG, "onFailure " + e.toString());
                        }
                    });

                    // Profile is all saved and good to go back to the main activity
                    startActivity(new Intent(getApplicationContext(), MainActivity.class));
                }else {
                    Toast.makeText(getApplicationContext(), "Error !" +task.getException().getMessage(), Toast.LENGTH_LONG).show();
                }
            }
        });





    }
}