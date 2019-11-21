package com.example.coffee;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.Spinner;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

public class MainActivity extends AppCompatActivity {
    private Button button;
    private Spinner crowdSpinner;
    private CoffeeShop myCoffeeShop = new CoffeeShop(); //create new instance of coffee shop class

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        crowdSpinner = findViewById(R.id.spinner);
        button = findViewById(R.id.button);
        //create listener
        View.OnClickListener onclick = new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                findCoffee(v);
            }
        };
        //add lsitener to button
        button.setOnClickListener(onclick);

        Toolbar toolbar = findViewById(R.id.toolbar2); //make sure Androidx!
        setSupportActionBar(toolbar);

    }

    //method to figure out what coffee shop is recommended
    private void findCoffee(View view){//take view in as a parameter when anything that is a subclass of view is called
        Integer crowd = crowdSpinner.getSelectedItemPosition(); //gets position in array value to pass as case value ,0-4
        myCoffeeShop.setCoffeeShopName(crowd); //pass positon as case
        String suggestedCoffeeShop = myCoffeeShop.getCoffeeShopName();
        String suggestedCoffeeShopURL = myCoffeeShop.getCoffeeShopURL();
        Log.i("shop suggested", suggestedCoffeeShop);
        Log.i("url suggested", suggestedCoffeeShopURL);

        Intent intent = new Intent(this, CoffeeActivity.class);
        intent.putExtra("coffeeShopName", suggestedCoffeeShop);
        intent.putExtra("coffeeShopURL", suggestedCoffeeShopURL);
        startActivity(intent);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
        //get the id of the item on the action bar taht was clicked
        switch (item.getItemId()){
            case R.id.createOrder:
                //explicit intent (defining specific class)
                Intent intent = new Intent(this, OrderActivity.class);
                startActivity(intent);
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }
}
