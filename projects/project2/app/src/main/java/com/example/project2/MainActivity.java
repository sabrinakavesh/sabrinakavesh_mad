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
    EditText vacAdj3;
    EditText vacNoun1;
    EditText vacNoun2;
    EditText vacNoun3;
    EditText vacPlNoun1;
    EditText vacPlNoun2;
    EditText vacPlNoun3;
    EditText vacPlNoun4;
    EditText vacGame;
    EditText vacPlant;
    EditText vacBody;
    EditText vacPlace;
    EditText vacNumber;
    EditText vacIngVerb1;
    EditText vacIngVerb2;
    EditText vacIngVerb3;
    EditText vacIngVerb4;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        vacAdj1 = findViewById(R.id.vacAdj1);
        vacAdj2 = findViewById(R.id.vacAdj2);
        vacAdj3 = findViewById(R.id.vacAdj3);
        vacNoun1 = findViewById(R.id.vacNoun1);
        vacNoun2 = findViewById(R.id.vacNoun2);
        vacNoun3 = findViewById(R.id.vacNoun3);
        vacPlNoun1 = findViewById(R.id.vacPlNoun1);
        vacPlNoun2 = findViewById(R.id.vacPlNoun2);
        vacPlNoun3 = findViewById(R.id.vacPlNoun3);
        vacPlNoun4 = findViewById(R.id.vacPlNoun4);
        vacGame = findViewById(R.id.vacGame);
        vacPlant = findViewById(R.id.vacPlant);
        vacBody = findViewById(R.id.vacBody);
        vacPlace = findViewById(R.id.vacPlace);
        vacNumber = findViewById(R.id.vacNumber);
        vacIngVerb1 = findViewById(R.id.vacIngVerb1);
        vacIngVerb2 = findViewById(R.id.vacIngVerb2);
        vacIngVerb3 = findViewById(R.id.vacIngVerb3);
        vacIngVerb4 = findViewById(R.id.vacIngVerb4);

            //****instructions for how to save onsaveinstance state to save story
//       findViewById(R.id.);
//        vacAdj3
//        vacNoun3
//        vacPlNoun1
//        vacPlNoun2
//        vacPlNoun3
//        vacPlNoun4
//        vacGame
//        vacPlant
//        vacBody
//        vacPlace
//        vacNumber
//        vacIngVerb1
//        vacIngVerb2
//        vacIngVerb3
//        vacIngVerb4

    }

    public void vacationStory(View view) {
        //edittext
        String adj1vac = vacAdj1.getText().toString();
        String adj2vac = vacAdj2.getText().toString();
        String adj3vac = vacAdj3.getText().toString();
        String noun1vac = vacNoun1.getText().toString();
        String noun2vac = vacNoun2.getText().toString();
        String noun3vac = vacNoun3.getText().toString();
        String plnoun1vac = vacPlNoun1.getText().toString();
        String plnoun2vac = vacPlNoun2.getText().toString();
        String plnoun3vac = vacPlNoun3.getText().toString();
        String plnoun4vac = vacPlNoun4.getText().toString();
        String gamevac = vacGame.getText().toString();
        String plantvac = vacPlant.getText().toString();
        String bodyvac = vacBody.getText().toString();
        String placevac = vacPlace.getText().toString();
        String numbervac = vacNumber.getText().toString();
        String ingverb1vac = vacIngVerb1.getText().toString();
        String ingverb2vac = vacIngVerb2.getText().toString();
        String ingverb3vac = vacIngVerb3.getText().toString();
        String ingverb4vac = vacIngVerb4.getText().toString();


//        String  = .getText().toString();
//        String  =

        TextView readStory = findViewById(R.id.storyView);
        //readStory.setText("A vacation is when to take a trip to some " + adj1vac + " place with your " + adj2vac + " family. Usually you go to some place that is near a/an " + noun1vac + " or up on a/an " + noun2vac + ".");
        readStory.setText(getString(R.string.message) + " " + adj1vac + " " + getString(R.string.message2) + " " + adj2vac + " " + getString(R.string.message3) + " " + noun1vac + " " + getString(R.string.message4) + " " + noun2vac + getString(R.string.message5) + " " + plnoun1vac + " " + getString(R.string.message6) + getString(R.string.message7) + getString(R.string.message8) + getString(R.string.message9) + getString(R.string.message10));

    }
}
