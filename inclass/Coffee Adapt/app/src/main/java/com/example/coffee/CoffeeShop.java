package com.example.coffee;

public class CoffeeShop {
    //represent our data, in this case represent a coffee shop
    private String coffeeShopName;
    private String coffeeShopURL;
    //private because used in teh class

    private void setCoffeeInfo(Integer coffeeCrowd){
        switch (coffeeCrowd){
            case 0: //popular
                coffeeShopName="Starbucks";
                coffeeShopURL="https://www.starbucks.com";
                break;
            case 1: //cycling
                coffeeShopName="Amante";
                coffeeShopURL="https://www.amantecoffee.com";
                break;
            case 2: //hipster
                coffeeShopName="Ozo";
                coffeeShopURL="https://www.ozocoffee.com";
                break;
            case 3: //tea
                coffeeShopName="Pekoe";
                coffeeShopURL="https://www.pekoesiphouse.com";
                break;
            case 4: //hippie
                coffeeShopName="Trident";
                coffeeShopURL="https://www.tridentcafe.com";
                break;
            default:
                coffeeShopName="none";
                coffeeShopURL="https://www.google.com/search?q=boulder+coffee+shops&rlz=1C1CHBF_enUS854US854&oq=boulder+coffee+shops&aqs=chrome..69i57.2671j0j7&sourceid=chrome&ie=UTF-8";
        }
    }

    //public bc called outside fo class
    public String getCoffeeShopName() {
        return coffeeShopName;
    }

    public String getCoffeeShopURL() {
        return coffeeShopURL;
    }

    public void setCoffeeShopName(Integer coffeeCrowd){
        setCoffeeInfo(coffeeCrowd);
    }

    public void setCoffeeShopURL(Integer coffeeCrowd){
        setCoffeeInfo(coffeeCrowd);
    }
}
