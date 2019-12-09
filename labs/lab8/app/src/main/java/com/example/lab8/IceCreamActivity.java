package com.example.lab8;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.snackbar.Snackbar;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.util.Log;
import android.view.View;
import android.widget.TextView;

public class IceCreamActivity extends AppCompatActivity {
    private String iceCreamStore;
    private String iceCreamStoreURL;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_ice_cream);
        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        FloatingActionButton fab = findViewById(R.id.fab);
        fab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                loadWebSite(view);
            }
        });

        Intent intent = getIntent();
        iceCreamStore = intent.getStringExtra("iceCreamStoreName");
        iceCreamStoreURL = intent.getStringExtra("iceCreamStoreURL");
        Log.i("store received", iceCreamStore);
        Log.i("url received", iceCreamStoreURL);

        //update text view
        TextView messageView = findViewById(R.id.iceCreamStoreTextView);
        messageView.setText("You should check out " + iceCreamStore);
    }

    private void loadWebSite(View view){
        //only using within this class so private, sometimes called a helper method
        Intent intent  = new Intent((Intent.ACTION_VIEW));
        intent.setData(Uri.parse(iceCreamStoreURL));
        startActivity(intent);
    }

}
