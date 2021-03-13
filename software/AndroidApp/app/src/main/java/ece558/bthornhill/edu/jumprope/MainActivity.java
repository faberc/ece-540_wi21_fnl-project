package ece558.bthornhill.edu.jumprope;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.widget.Toast;

import com.google.firebase.auth.FirebaseAuth;

public class MainActivity extends AppCompatActivity implements OnMenuSelectionListener {

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


    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflates the menu
        getMenuInflater().inflate(R.menu.menu, menu);
        return true;
    }

    public void onMenuSelection(String selection){
        FragmentManager fm = getSupportFragmentManager();
        FragmentTransaction transaction = fm.beginTransaction();

        switch(selection){
            case "playgame":
                startActivity(new Intent(MainActivity.this, GameplayActivity.class));
                break;
            case "createprofile":
                transaction.replace(R.id.fragment_container,CreateProfileFragment.class, null);
                transaction.addToBackStack(null);
                transaction.commit();
                break;
            case "viewprofile":
                startActivity(new Intent(MainActivity.this, ViewProfileActivity.class));
                break;
            case "login":
                transaction.replace(R.id.fragment_container,LoginFragment.class, null);
                transaction.addToBackStack(null);
                transaction.commit();
                break;
            case "logout":
                FirebaseAuth.getInstance().signOut();
                Toast.makeText(MainActivity.this, "Logged Out", Toast.LENGTH_SHORT).show();
        }
    }
}