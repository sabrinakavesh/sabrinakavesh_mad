package com.example.skfinal;

public class BurritoStore {
    private String burritoStoreName;
   // private String iceCreamStoreURL;

    private void setBurritoStore(Integer burritoLocation){
        switch (burritoLocation){
            case 0: //
                burritoStoreName="Illegal Pete's";
                break;
            case 1: //
                burritoStoreName="Chipotle";
                break;
            case 2: //
                burritoStoreName="Bartaco";
                break;
            default:
                burritoStoreName="none";
        }
    }

    public String getBurritoStoreName(){
        return burritoStoreName;
    }

    public void setBurritoStoreName(Integer burritoLocation){
        setBurritoStore (burritoLocation);
    }



}
