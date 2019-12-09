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
    private IceCream myIceCream = new IceCream();

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
        myCoffeeShop.setIceCreamStoreName(crowd);
        String suggestedCoffeeShop = myCoffeeShop.getIceCreamStoreName();
        String suggestedCoffeeShopURL = myCoffeeShop.getIceCreamStoreName();
        Log.i("shop suggested", suggestedCoffeeShop);
        Log.i("url suggested", suggestedCoffeeShopURL);

        Intent intent = new Intent(this,CoffeeActivity.class);
        intent.putExtra("coffeeShopName", suggestedCoffeeShop);
        intent.putExtra("coffeeShopURL", suggestedCoffeeShopURL);
        startActivity(intent);
    }
}
