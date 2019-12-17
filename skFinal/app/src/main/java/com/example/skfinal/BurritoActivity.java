package com.example.skfinal;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

public class BurritoActivity extends AppCompatActivity {
    private String burrito;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_burrito_store);

        Intent intent = getIntent();
        burrito = intent.getStringExtra("burritoStoreName");
        Log.i("store received", burrito);

        TextView messageView = findViewById(R.id.suggestedBurritoTextView);
        messageView.setText("You should go to " + burrito);
    }

}
