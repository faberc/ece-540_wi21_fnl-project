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
        Fragment fragment = fm.findFragmentById(R.id.fragment_container);

        if (fragment == null){
            fragment = new MenuFragment();
            fm.beginTransaction().add(R.id.fragment_container, fragment).commit();
        }

        LinearLayout linearLayout = findViewById(R.id.LargeLayout);
        if(linearLayout != null){
            mDualPane = true;
            Log.d(TAG, "Is dual " + mDualPane);
        }
        else{
            Log.d(TAG, "Is NOT dual " + mDualPane);
        }


        /*fm.beginTransaction().replace(R.id.fragment_detail, LoginFragment.class,null)
                .setReorderingAllowed(true)
                .addToBackStack("name")
                .commit();
*/

    }

   /* @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflates the menu
        getMenuInflater().inflate(R.menu.menu, menu);
        return true;
    }*/

    public void onMenuSelection(String selection){
        FragmentManager fm = getSupportFragmentManager();

        switch(selection){
            case "playgame":
                startActivity(new Intent(MainActivity.this, GameplayActivity.class));
                break;
            case "createprofile":
                if(mDualPane){
                    fm.beginTransaction().replace(R.id.fragment_detail,CreateProfileFragment.class, null)
                            .addToBackStack(null)
                            .commit();
                }else{
                    fm.beginTransaction().replace(R.id.fragment_container,CreateProfileFragment.class, null)
                            .addToBackStack(null)
                            .commit();
                }
                break;
            case "viewprofile":
                if(mDualPane){
                    fm.beginTransaction().replace(R.id.fragment_detail,ViewProfileFragment.class, null)
                            .addToBackStack(null)
                            .commit();
                }else {
                    fm.beginTransaction().replace(R.id.fragment_container, ViewProfileFragment.class, null)
                            .addToBackStack(null)
                            .commit();
                }
                break;
            case "login":
                if(mDualPane){
                    fm.beginTransaction().replace(R.id.fragment_detail,LoginFragment.class, null)
                            .addToBackStack(null)
                            .commit();
                }else {
                    fm.beginTransaction().replace(R.id.fragment_container, LoginFragment.class, null)
                            .addToBackStack(null)
                            .commit();
                }
                break;
            case "logout":
                FirebaseAuth.getInstance().signOut();
                Toast.makeText(MainActivity.this, "Logged Out", Toast.LENGTH_SHORT).show();
                break;
            case "menu":
                if(mDualPane){
                  // Want to clear out view
                }else {
                    fm.beginTransaction().replace(R.id.fragment_container, MenuFragment.class, null)
                            .addToBackStack(null)
                            .commit();
                }
        }
    }
}