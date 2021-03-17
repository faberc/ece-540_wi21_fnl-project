package ece558.bthornhill.edu.jumprope;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.Toast;

import com.google.firebase.auth.FirebaseAuth;

public class MainActivity extends AppCompatActivity implements OnMenuSelectionListener {
    private static final String TAG = "MainActivity";

    private boolean mDualPane;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        FragmentManager fm = getSupportFragmentManager();
        Fragment fragmentmenu = fm.findFragmentById(R.id.fragment_menu);
        Fragment fragmentcont = fm.findFragmentById(R.id.fragment_container);


        LinearLayout linearLayout = findViewById(R.id.LargeLayout);
        if(linearLayout != null){
            mDualPane = true;
            Log.d(TAG, "Is dual " + mDualPane);
            if (fragmentmenu == null){
                fragmentmenu = new MenuFragment();
                fm.beginTransaction().add(R.id.fragment_menu, fragmentmenu).commit();
            }
            // If fragment in fragment container is the menu, I want to clear it
            if(fragmentcont.getTag() != null){
                if(fragmentcont.getTag().equals("menu")){
                    Log.d(TAG, "The fragment containter did have menu as the last fragment");
                    fm.beginTransaction().remove(fragmentcont).commit();
                }
            }

        }
        else{
            Log.d(TAG, "Is NOT dual " + mDualPane);
            if (fragmentcont == null){
                fragmentcont = new MenuFragment();
                fm.beginTransaction().add(R.id.fragment_container, fragmentcont, "menu").commit();
            }
        }


    }


    public void onMenuSelection(String selection){
        FragmentManager fm = getSupportFragmentManager();

        switch(selection){
            case "playgame":
                startActivity(new Intent(MainActivity.this, GameplayActivity.class));
                break;
            case "createprofile":
                fm.beginTransaction().replace(R.id.fragment_container,CreateProfileFragment.class, null)
                        .addToBackStack(null)
                        .commit();

                break;
            case "viewprofile":
                fm.beginTransaction().replace(R.id.fragment_container,ViewProfileFragment.class, null)
                        .addToBackStack(null)
                        .commit();
                break;
            case "login":
                fm.beginTransaction().replace(R.id.fragment_container,LoginFragment.class, null)
                        .addToBackStack(null)
                        .commit();
                break;
            case "logout":
                FirebaseAuth.getInstance().signOut();
                Toast.makeText(MainActivity.this, "Logged Out", Toast.LENGTH_SHORT).show();
                break;
            case "menu":
                if(mDualPane){
                    // I want fragment menu to hold the menu and I want to clear out fragment container view
                    Fragment fragmentmenu = fm.findFragmentById(R.id.fragment_menu);
                    if (fragmentmenu == null) {
                        fragmentmenu = new MenuFragment();
                        fm.beginTransaction().add(R.id.fragment_menu, fragmentmenu).commit();
                    }

                    Fragment fragmentcont = fm.findFragmentById(R.id.fragment_container);
                    fm.beginTransaction().remove(fragmentcont).commit();

                }else {
                    Fragment fragmentcont = fm.findFragmentById(R.id.fragment_container);
                    fragmentcont = new MenuFragment();
                    fm.beginTransaction().replace(R.id.fragment_container, fragmentcont, "menu")
                            .addToBackStack(null)
                            .commit();
                }
        }
    }
}