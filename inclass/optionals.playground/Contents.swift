var score : Int?
score = 80

if score != nil {
    //have to always check if a var has a value before unwrapping it
    //? means optional, ! is force unwrap
    print("Score is \(score!)")
}

if let currentScore = score {
    print("My current score is \(currentScore)")
}

//let newScore : Int! = 95 //optional but force unwrapping from beginning bc never nil
//print("My new score is \(newScore)")


class Vehicle {
    var wheelNum = 4
    var speed = 25
    var mpg = 20
    let tankCapacity = 20
//    var name : String?
    var name : String //could give default value String = "yo", or create initializer
    
    init(vehicleName vname: String){
        name = vname
        //can use to initialize instance of class and pass it a name and asssign to property name
    }
    
    init(){
        //if create empty without a name ahs to give a default name bc var has to have a val by initialization
        name = "yo"
    }
    
    func changeSpeed(amount:Int){ //method
        speed = speed + amount
    }
    func changeEfficiency(newSpeed:Int, newmpg:Int){
        speed = newSpeed
        mpg = newmpg
    }
}

//let myJeep = Vehicle() //instance, constant. default init with optional string
let myJeep = Vehicle(vehicleName: "rodeo")

myJeep.mpg
myJeep.speed
myJeep.name
//name is nil bc defined as an optional
myJeep.speed = 50 //can change the value
myJeep.speed
//if string not an optional, it would get errors bc didnt create initialization funciton and swift made a default one and its not allowed to be nil and theres no value
//if not optional, then create an initializer

let suv = Vehicle()
//error bc as soon as you create an init function swift thinks you are handling all that now and doesnt help

class Bicycle : Vehicle {//means that vehicle is its class. bycycle is of type class
//bicycle now inherits everyting in vehicle
    var reflector : Bool? //cant initialize as  var reflector : Bool bc doesnt have a default value.
    //but can make an optional
    
    init(_ ref:Bool){
        reflector = ref
        super.init() //in sub class make sure to handle initaliztion for sub class and super class
    }
    
    override init(){
        reflector = true
        super.init()
    }
}

var bike = Bicycle(true) //Bicycle(), empty initializer
bike.reflector
bike.wheelNum = 2
bike.wheelNum
//myJeep.reflector //doesnt have this attribute


var shoppingList = ["cereal", "milk"] //, needs to be 1 type, 3 ways to initialzie
print(shoppingList[0])
shoppingList.append("bagels") //add new element
print("\(shoppingList.count)")
//insertAt, add at specificed index. removeAt, removelast, (first and isnter?)
shoppingList.insert("cream cheese", at: 2)

var myList = [String]() //array of strings, but empty. initalized
print("\(myList.count)")

var myList2:[String] //different. defining variable myList2 array of type string, but NOT initalized
//have to initalize to actyally create the array of strings
//print("\(myList2.count)") //error bc not initalized

var newList=[String:String]() //keys and values strings?
//var classes:[String:String] //cretes a dict of type string string but not initalized
var classes:[String:String] = ["4120":"MAD", "2200":"web"] //have to use key to access value
classes["4120"]
//.keys returns all values, .values all vals. update key
classes.updateValue("Mobile app dev", forKey: "4120")
classes["4120"]
classes.removeValue(forKey: "2200")
classes["2000"]="MIT"
classes.count

var testDict = [String:String]()
var test1 = 2
var test2 = "hello"
var test3 = "adjective"
//var diction
var dict:[String] = [test

//testDict = ["vacAdj]
