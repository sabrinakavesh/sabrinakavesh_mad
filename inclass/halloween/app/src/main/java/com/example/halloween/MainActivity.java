package com.example.halloween;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void sayBoo(View view) {
        //edittext
        EditText name = findViewById(R.id.editText);
        String nameValue = name.getText().toString();

        //get access to textview
        TextView booText = findViewById(R.id.message);
        //finds view with id 'message' and returns that
        booText.setText("Happy Halloween " + nameValue + "!");

        //imageview
        ImageView ghost = findViewById(R.id.imageView);
        ghost.setImageResource(R.drawable.ghost);

//        public method means available outside of this class
        //void doesnt return anything
        //sayBoo is name
        //takes a view as parameter

    }
}
