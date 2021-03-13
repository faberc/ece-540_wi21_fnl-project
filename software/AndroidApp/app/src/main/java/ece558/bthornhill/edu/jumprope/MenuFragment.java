package ece558.bthornhill.edu.jumprope;

import android.content.Intent;
import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

import com.google.firebase.auth.FirebaseAuth;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link MenuFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class MenuFragment extends Fragment {
    private static final String TAG = "MenuFragment";

    private Button mStartGameButton;
    private Button mCreateProfileButton;
    private Button mViewProfileButton;
    private Button mLoginButton;
    private Button mLogoutButton;

    // TODO: Rename parameter arguments, choose names that match
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;

    public MenuFragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment MenuFragment.
     */
    // TODO: Rename and change types and number of parameters
    public static MenuFragment newInstance(String param1, String param2) {
        MenuFragment fragment = new MenuFragment();
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
        View view = inflater.inflate(R.layout.fragment_menu, container, false);

        mStartGameButton =  view.findViewById(R.id.button_play);
        mStartGameButton.setOnClickListener(ButtonListener);
        mCreateProfileButton = view.findViewById(R.id.button_createprofile);
        mCreateProfileButton.setOnClickListener(ButtonListener);
        mLoginButton = view.findViewById(R.id.button_login);
        mLoginButton.setOnClickListener(ButtonListener);
        mLogoutButton = view.findViewById(R.id.button_logout);
        mLogoutButton.setOnClickListener(ButtonListener);
        mViewProfileButton = view.findViewById(R.id.button_viewprofile);
        mViewProfileButton.setOnClickListener(ButtonListener);

        // Inflate the layout for this fragment
        return view;
    }

    View.OnClickListener ButtonListener = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            String mSelection= "";

            switch (v.getId()) {
                case R.id.button_play:
                    mSelection = "playgame";
                    break;
                case R.id.button_createprofile:
                    mSelection = "createprofile";
                    break;
                case R.id.button_viewprofile:
                    mSelection = "viewprofile";
                    break;
                case R.id.button_login:
                    mSelection = "login";
                    break;
                case R.id.button_logout:
                    mSelection = "logout";
            }

            OnMenuSelectionListener listener = (OnMenuSelectionListener)getActivity();
            listener.onMenuSelection(mSelection);

        }
    };
}