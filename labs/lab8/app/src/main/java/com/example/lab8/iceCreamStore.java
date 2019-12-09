package com.example.lab8;

public class iceCreamStore {
    private String iceCreamStoreName;
    private String iceCreamStoreURL;

    private void setCoffeeInfo(Integer coffeeCrowd){
        switch (coffeeCrowd){
            case 0: //traditional
                iceCreamStoreName="Ben & Jerry's";
                iceCreamStoreURL="https://www.benjerry.com/";
                break;
            case 1: //gelato
                iceCreamStoreName="Glacier Handmade Ice Cream";
                iceCreamStoreURL="https://www.glaciericecream.com/";
                break;
            case 2: //froyo
                iceCreamStoreName="Ripple";
                iceCreamStoreURL="https://www.rippleyogurt.com/";
                break;
            case 3: //local
                iceCreamStoreName="Sweet Cow";
                iceCreamStoreURL="https://www.sweetcowicecream.com/";
                break;
            default:
                iceCreamStoreName="none";
                iceCreamStoreURL="https://www.google.com/search?q=boulder+ice+cream+stores&rlz=1C1CHBF_enUS854US854&oq=boulder+ice+cream+stores&aqs=chrome..69i57.6693j0j9&sourceid=chrome&ie=UTF-8";
        }
    }

    public String geticeCreamStoreName(){
        return iceCreamStoreName;
    }

    public String geticeCreamStoreURL(){
        return iceCreamStoreURL;
    }

    public void seticeCreamStoreName(Integer iceCreamStyle){
        setIceCreamInfo(iceCreamStyle);
    }

    public void seticeCreamStoreURL(Integer iceCreamStyle){
        setIceCreamInfo(iceCreamStyle);
    }

}
