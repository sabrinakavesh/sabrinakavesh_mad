package com.example.lab8;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Spinner;

public class MainActivity extends AppCompatActivity {
    private Button button;
    private Spinner styleSpinner;
    private iceCreamStore myIceCream = new iceCreamStore();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        styleSpinner=findViewById(R.id.spinner);
        button = findViewById(R.id.button);
        //create listener
        View.OnClickListener onclick = new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                findCoffee(v);
            }
        };
        //add listener to button
        button.setOnClickListener(onclick);
    }

    private void findCoffee(View view){
        Integer crowd = styleSpinner.getSelectedItemPosition();
        myIceCream.setIceCreamStoreName(crowd);
        String suggestedIceCreamStoreName = myIceCream.getIceCreamStoreName();
        String suggestedIceCreamStoreURL = myIceCream.getIceCreamStoreURL();
        Log.i("store suggested", suggestedIceCreamStoreName);
        Log.i("url suggested", suggestedIceCreamStoreURL);

        Intent intent = new Intent(this,iceCreamStore.class);//orig coffee activity
        intent.putExtra("iceCreamStoreName", suggestedIceCreamStoreName);
        intent.putExtra("iceCreamStoreURL", suggestedIceCreamStoreURL);
        startActivity(intent);
    }
}
