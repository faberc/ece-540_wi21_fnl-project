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
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;

/**
 * Fragment that allows users to log into a profile using
 * the Firebase platform
 */
public class LoginFragment extends Fragment {
    private static final String TAG = "LoginFragment";

    private EditText mEmail, mPassword;
    private Button mLogin;
    private Button mProfile;

    private ProgressBar mProgressBar;
    private FirebaseAuth fAuth;

    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";
    private String mParam1;
    private String mParam2;

    public LoginFragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment LoginFragment.
     */
    public static LoginFragment newInstance(String param1, String param2) {
        LoginFragment fragment = new LoginFragment();
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

        fAuth = FirebaseAuth.getInstance();
        FirebaseUser currentUser = fAuth.getCurrentUser();
        if(currentUser != null) {
            Toast.makeText(getActivity(), "Already logged in", Toast.LENGTH_SHORT).show();
            OnMenuSelectionListener listener = (OnMenuSelectionListener)getActivity();
            listener.onMenuSelection("menu");
            return;
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment

        View view = inflater.inflate(R.layout.fragment_login, container, false);

        mEmail = view.findViewById(R.id.editemail);
        mPassword = view.findViewById(R.id.editpassword);
        mProgressBar = view.findViewById(R.id.progressBar);

        mProfile = view.findViewById(R.id.button_profile);
        mProfile.setOnClickListener(ButtonListener);
        mLogin = view.findViewById(R.id.button_login);
        mLogin.setOnClickListener(ButtonListener);

        return view;
    }




    View.OnClickListener ButtonListener = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            String mSelection= "";

            switch (v.getId()){
                case R.id.button_profile:
                    mSelection = "createprofile";
                    break;
                case R.id.button_login:
                    authenticate();
                    break;
            }
            OnMenuSelectionListener listener = (OnMenuSelectionListener)getActivity();
            listener.onMenuSelection(mSelection);
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
                if(task.isSuccessful()) {
                    Log.d(TAG, "signInWithEmail:success");
                    Toast.makeText(getActivity(), "Successfully logged in", Toast.LENGTH_SHORT).show();
                    OnMenuSelectionListener listener = (OnMenuSelectionListener) getActivity();
                    listener.onMenuSelection("menu");
                    return;
                }else{
                    Toast.makeText(getActivity(), "Authentication failed", Toast.LENGTH_SHORT).show();
                    mProgressBar.setVisibility(View.INVISIBLE);
                }
            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(@NonNull Exception e) {
                Log.d(TAG, "onFailure " + e.toString());
            }
        });

    };
}