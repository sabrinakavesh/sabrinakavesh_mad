package com.example.skfinal;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;

public class MainActivity extends AppCompatActivity {
    private Button button;
    private Spinner locationSpinner;
    private ToggleButton toggle;
    private RadioGroup burritoType;
    private CheckBox salsaCheckBox;
    private CheckBox cheeseCheckBox;
    private CheckBox sourCreamCheckBox;
    private CheckBox guacCheckBox;
    private EditText userName;
    private ImageView foodImage;
    private TextView desiredMeal;
    private BurritoStore myBurritoStore = new BurritoStore();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        locationSpinner=findViewById(R.id.spinner);
        button = findViewById(R.id.button);
        foodImage = findViewById(R.id.imageView);
        userName = findViewById(R.id.userName);
        burritoType = findViewById(R.id.radioGroup);
        salsaCheckBox = findViewById(R.id.checkBox);
        cheeseCheckBox = findViewById(R.id.checkBox2);
        sourCreamCheckBox = findViewById(R.id.checkBox3);
        guacCheckBox = findViewById(R.id.checkBox4);
        toggle = findViewById(R.id.toggleButton);
        desiredMeal = findViewById(R.id.favBurrito);

        //create listener
        View.OnClickListener onclick = new View.OnClickListener() {
            @Override
            public void onClick(View v) {
              //  findBurrito(v);
                foodMessage(v);
            }
        };
//
//        View.OnClickListener onClick = new View.OnClickListener(){
//            @Override
//            public void onClick(View v){
//                switch (v.getId()){
//                    case R.id.storyButton:
//                        vacationStory(v);
//                        break;
//                    case R.id.resetButton:
//                        resetFields(v);//
//                        break;
//            }
//        };
        //add listener to button
        button.setOnClickListener(onclick);
    }

//    public void findBurrito(View view){
//        Integer burritoLocation = locationSpinner.getSelectedItemPosition();
//        myBurritoStore.setBurritoStoreName(burritoLocation);
//        String suggestedBurritoStoreName = myBurritoStore.getBurritoStoreName();
//        Log.i("store suggested", suggestedBurritoStoreName);
//
//        Intent intent = new Intent(this, BurritoActivity.class);
//        intent.putExtra("burritoStoreName", suggestedBurritoStoreName);
//        startActivity(intent);
//    }

    public void foodMessage(View view) {
        Integer burritoLocation = locationSpinner.getSelectedItemPosition();
        myBurritoStore.setBurritoStoreName(burritoLocation);
        String suggestedBurritoStoreName = myBurritoStore.getBurritoStoreName();
        Log.i("store suggested", suggestedBurritoStoreName);

       // Intent intent = new Intent(this, BurritoActivity.class);
        //intent.putExtra("burritoStoreName", suggestedBurritoStoreName);
        //startActivity(intent);

        String name = userName.getText().toString();
        String location = String.valueOf(locationSpinner.getSelectedItem());
        boolean meatVeggie = toggle.isChecked(); //toggle buton
        int burritoTypeId = burritoType.getCheckedRadioButtonId();
        Boolean salsa = salsaCheckBox.isChecked();
        Boolean cheese = cheeseCheckBox.isChecked();
        Boolean sourCream = sourCreamCheckBox.isChecked();
        Boolean guac = guacCheckBox.isChecked();
        String meatOrVeggie = " ";
        String tacoOrBurrito = "";
        String burritoLocationName = "";
        switch (location) {
            case "The Hill":
                burritoLocationName = "The Hill";
                break;
            case "29th Street":
                burritoLocationName = "29th Street";
                break;
            case "Pearl Street":
                burritoLocationName = "Pearl Street";
                break;
            default:
                burritoLocationName = "The Hill";
        }

        if (meatVeggie) {
            meatOrVeggie = "meat";
        } else{
            meatOrVeggie = "veggies";
        }
        int counter = 0;
        String features = "";

        if (salsa){
            counter += 1;
            features = "with salsa";
        }
        if (cheese){
            counter += 1;
            if (counter == 2){
                features = "with salsa and cheese";
            }
            else{
                features = "with cheese";
            }
        }
        if (sourCream){
            counter += 1;
            if (counter == 3){
                features = "with salsa, cheese, and sour cream";
            }
            else if (counter == 2 && salsa){
                features = "with salsa and sour cream";
            }
            else if (counter == 2 && cheese){
                features = " with salsa and cheese";
            }
            else{
                features = "with sour cream";
            }
        }
        if (guac){
            counter += 1;
            if (counter == 4){
                features += "with salsa, cheese, sour cream, and guac";
            }
            //salsa, cheese, guac; salsa, sour, guac; sour, cheese, guac
            else if (counter == 3){
                if (salsa){
                    if (cheese){
                        features = "with salsa, cheese, and guac";
                    }
                    else if (sourCream){
                        features = "with salsa, sour cream, and guac";
                    }
                }
                else if (cheese){
                    features = "with cheese, sour cream, and guac";
                }
                features += "with salsa, cheese, and sour cream";
            }

            else if (counter == 2 && salsa){
                features += "with guac and salsa";
            }
            else if (counter == 2 && cheese){
                features += "with guac and cheese";
            }
            else if (counter == 2 && sourCream){
                features += "with guac and sour cream";
            }
            else{
                features += "with guac";
            }
        }

//        String salsaStr = String.valueOf(salsaCheckBox);
//        String cheeseStr = String.valueOf(cheeseCheckBox);
//        String sourCreamStr = String.valueOf(sourCreamCheckBox);
//        String guacStr = String.valueOf(guacCheckBox);


        if (burritoTypeId == -1){
            Context context = getApplicationContext();
            CharSequence text = "Please select burrito or taco type";
            int duration = Toast.LENGTH_SHORT;

            Toast toast = Toast.makeText(context, text, duration);
            toast.show();
        } else if (burritoTypeId == R.id.radioButton4){
            tacoOrBurrito = "burrito";
            foodImage.setImageResource(R.drawable.burrito);
        } else{
            tacoOrBurrito = "taco";
            foodImage.setImageResource(R.drawable.taco);
        }
        desiredMeal.setText(name + " " + getString(R.string.message1) + " " + tacoOrBurrito + " " + meatOrVeggie + " " + getString(R.string.message3) + " " + features + getString(R.string.message4) + " " + suggestedBurritoStoreName + " " + getString(R.string.message5) + " " + burritoLocationName + getString(R.string.message6));

    }
}
