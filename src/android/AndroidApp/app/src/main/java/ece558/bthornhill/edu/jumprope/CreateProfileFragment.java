package ece558.bthornhill.edu.jumprope;

import android.content.Intent;
import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;

import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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

/**
 * Fragment that allows users to create a profile using
 * the Firebase platform
 */
public class CreateProfileFragment extends Fragment {
    private static final String TAG = "CreateProfileFragment";

    private EditText mName, mEmail, mPassword;
    private Button mSave;
    private Button mLogin;
    FirebaseAuth fAuth;
    ProgressBar mProgressBar;
    FirebaseFirestore fStore = FirebaseFirestore.getInstance();
    String userID;

    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";
    private String mParam1;
    private String mParam2;

    public CreateProfileFragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment CreateProfileFragment.
     */
    public static CreateProfileFragment newInstance(String param1, String param2) {
        CreateProfileFragment fragment = new CreateProfileFragment();
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
        View view = inflater.inflate(R.layout.fragment_create_profile, container, false);

        mName = view.findViewById(R.id.editname);
        mEmail = view.findViewById(R.id.editemail);
        mPassword = view.findViewById(R.id.editpassword);

        mSave = view.findViewById(R.id.button_save);
        mSave.setOnClickListener(ButtonListener);
        mLogin = view.findViewById(R.id.button_login);
        mLogin.setOnClickListener(ButtonListener);

        fAuth = FirebaseAuth.getInstance();
        mProgressBar = view.findViewById(R.id.progressBar);

        // Check is user is already logged in
        if(fAuth.getCurrentUser() != null){
            Toast.makeText(getActivity(), "Already logged in", Toast.LENGTH_SHORT).show();
            OnMenuSelectionListener listener = (OnMenuSelectionListener)getActivity();
            listener.onMenuSelection("menu");
        }
        return view;
    }
    View.OnClickListener ButtonListener = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            String mSelection= "";
            switch (v.getId()){
                case R.id.button_save:
                    authenticate();
                    break;
                case R.id.button_login:
                    mSelection = "login";
                    break;
            }
            OnMenuSelectionListener listener = (OnMenuSelectionListener)getActivity();
            listener.onMenuSelection(mSelection);
        }
    };

    /**
     * Verifies user inputs are valid and creates a new
     * profile in the Firebase platform
     *
     */
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
                    Toast.makeText(getActivity(), "Profile created", Toast.LENGTH_SHORT).show();
                    // Was able to create a new user so now we need to save their information to their profile
                    // Get the new user ID so we can save the information to this ID
                    userID = fAuth.getCurrentUser().getUid();
                    DocumentReference documentReference = fStore.collection("users").document(userID);
                    Map<String, Object> user = new HashMap<>();
                    user.put("Name", name);
                    user.put("Email", email);
                    user.put("Score", 0);
                    documentReference.set(user).addOnSuccessListener(new OnSuccessListener<Void>() {
                        @Override
                        public void onSuccess(Void aVoid) {
                            Toast.makeText(getActivity(), "User Profile saved", Toast.LENGTH_SHORT).show();
                            Log.d(TAG, "onSuccess: user profile is created for " + userID);
                        }
                    }).addOnFailureListener(new OnFailureListener() {
                        @Override
                        public void onFailure(@NonNull Exception e) {
                            Log.d(TAG, "onFailure " + e.toString());
                        }
                    });

                    // Profile is all saved and good to go back to the main activity
                    OnMenuSelectionListener listener = (OnMenuSelectionListener)getActivity();
                    listener.onMenuSelection("menu");
                    return;
                }else {
                    Toast.makeText(getActivity(), "Error !" +task.getException().getMessage(), Toast.LENGTH_LONG).show();
                }
            }
        });





    }
}