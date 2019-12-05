package com.example.project2;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    EditText vacAdj1;
    EditText vacAdj2;
    EditText vacNoun1;
    EditText vacNoun2;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        vacAdj1 = findViewById(R.id.vacAdj1);
        vacAdj2 = findViewById(R.id.vacAdj2);
        vacNoun1 = findViewById(R.id.vacNoun1);
        vacNoun2 = findViewById(R.id.vacNoun2);

    }

    public void vacationStory(View view) {
        //edittext
        String adj1vac = vacAdj1.getText().toString();
        String adj2vac = vacAdj2.getText().toString();
        String noun1vac = vacNoun1.getText().toString();
        String noun2vac = vacNoun2.getText().toString();

        TextView readStory = findViewById(R.id.storyView);
        //readStory.setText("A vacation is when to take a trip to some " + adj1vac + " place with your " + adj2vac + " family. Usually you go to some place that is near a/an " + noun1vac + " or up on a/an " + noun2vac + ".");
        readStory.setText(getString(R.string.message) + " " + adj1vac + " " + getString(R.string.message2) + " " + adj2vac + " " + getString(R.string.message3) );

    }
}
