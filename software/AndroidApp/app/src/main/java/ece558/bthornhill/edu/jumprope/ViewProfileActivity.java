package ece558.bthornhill.edu.jumprope;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.material.datepicker.MaterialPickerOnPositiveButtonClickListener;
import com.google.android.material.textfield.TextInputLayout;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.firestore.DocumentReference;
import com.google.firebase.firestore.DocumentSnapshot;
import com.google.firebase.firestore.EventListener;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.FirebaseFirestoreException;
import com.google.firebase.storage.FirebaseStorage;
import com.google.firebase.storage.StorageReference;
import com.google.firebase.storage.UploadTask;
import com.squareup.picasso.Picasso;

import java.util.BitSet;

public class ViewProfileActivity extends AppCompatActivity {
    private static final String TAG = "ViewProfileActivity";

    private TextView uName;
    private TextView uEmail;
    private Button buttonLogout;
    private Button buttonPhoto;
    private ImageView profileImage;
    FirebaseAuth fAuth;
    FirebaseFirestore fStore;
    StorageReference storageReference;
    String userId;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_view_profile);

        uName = findViewById(R.id.textName);
        uEmail = findViewById(R.id.textEmail);
        buttonLogout = findViewById(R.id.button_logout);
        buttonLogout.setOnClickListener(ButtonListener);
        buttonPhoto =findViewById(R.id.button_photo);
        buttonPhoto.setOnClickListener(ButtonListener);
        profileImage = findViewById(R.id.imageProfile);

        fAuth = FirebaseAuth.getInstance();
        fStore = FirebaseFirestore.getInstance();
        storageReference = FirebaseStorage.getInstance().getReference();
        StorageReference profileRef = storageReference.child("users/" + fAuth.getUid() + "/profile.jpg");
        profileRef.getDownloadUrl().addOnSuccessListener(new OnSuccessListener<Uri>() {
            @Override
            public void onSuccess(Uri uri) {
                Picasso.get().load(uri).into(profileImage);
            }
        });

        // Check to see if there is a user logged in. If not, go to log in screen
        FirebaseUser currentUser = fAuth.getCurrentUser();
        if(currentUser != null) {
            userId = currentUser.getUid();
        } else{
            //OnMenuSelectionListener listener = (OnMenuSelectionListener)getActivity();
            //listener.onMenuSelection("login");
        }

        DocumentReference documentReference = fStore.collection("users").document(userId);
        documentReference.addSnapshotListener(this, new EventListener<DocumentSnapshot>() {
            @Override
            public void onEvent(@Nullable DocumentSnapshot value, @Nullable FirebaseFirestoreException error) {
                uName.setText(value.getString("Name"));
                uEmail.setText(value.getString("Email"));
            }
        });
    }
    View.OnClickListener ButtonListener = new View.OnClickListener() {
        @Override
        public void onClick(View v) {

            switch (v.getId()) {
                case R.id.button_photo:
                    // Open gallery so user can select photo
                    Intent openGalleryIntent = new Intent(Intent.ACTION_PICK, MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
                    startActivityForResult(openGalleryIntent, 1000);
                    break;
                case R.id.button_logout:
                    logout();

            }
        }
    };


    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        // Returning back from picking an image from the gallery
        if(requestCode == 1000){
            if(resultCode == Activity.RESULT_OK){
                Uri imageUri = data.getData();
                //profileImage.setImageURI(imageUri);

                uploadImageToFirebase(imageUri);
            }
        }
    }

    private void uploadImageToFirebase(Uri imageURI) {
        // Upload image to firebase storage
        StorageReference fileRef = storageReference.child("users/" + fAuth.getUid() + "/profile.jpg");
        fileRef.putFile(imageURI).addOnSuccessListener(new OnSuccessListener<UploadTask.TaskSnapshot>() {
            @Override
            public void onSuccess(UploadTask.TaskSnapshot taskSnapshot) {
                fileRef.getDownloadUrl().addOnSuccessListener(new OnSuccessListener<Uri>() {
                    @Override
                    public void onSuccess(Uri uri) {
                        Picasso.get().load(uri).into(profileImage);
                    }
                });

                        Toast.makeText(ViewProfileActivity.this, "Image Uploaded", Toast.LENGTH_SHORT).show();
            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(@NonNull Exception e) {
                Toast.makeText(ViewProfileActivity.this, "Image Failed to Upload", Toast.LENGTH_SHORT).show();

            }
        });
    }

    public void logout(){
        FirebaseAuth.getInstance().signOut();


    }
}