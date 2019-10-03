var message : String = "Hello class"
let classMax : Int = 30
//catn change type or const

var age : Int
age = 21

var test : String
test = "21"

print("my age is " + test)

var name = "Aileen"
//if don't specify type it will use type inference

//have to give a type or default value, cant do var test

print("Hi there")
print(name)
print("Hi " + name)
print("My name is \(name)")

//let a = 42
//let b = 0.123
////a is int, b is double; so cant add them together
//let c = Double(a) + b
//didnt change type, but converted for the calculation

let violet = ("#EE82EE", 238, 130, 238)
print(violet)
print(violet.0)
let (hex, red, green, blue) = violet
print(hex)
//a tuple, useful for returning items or grouping items with multiple values together

//strongly typed language so wont concatenate numbers when added (unlike javascript)
//doesnt support ++, -- anymore; use += or -=

//range operators adn conditionals
var young = "you're young"
var notYoung = "you're not young"

if age < 21 {
    print(young)
}
else {
    print(notYoung)
}

age < 21 ? young : notYoung //triggered
//tab to other place holders, shfit+enter for run and in ifs
switch age {
case 0...5://... is lcosed range operator, includes 0 and 5
    print("You're little")
case 6..<21://can do same with <=, >= etc
    print("enjoy school")
case 22...: //open range and will go to whatever it htink si the end. also works for ...22
    print("Welcome to the real world")
default:
    print("I don't know what you're doing")
} //dont need a break statement in each case because it doesnt fall through (run all cases below as soon as one is true)
//need default so switch statement will exit or end and not loop forever

//loops, for and while, not standard c style forloop
for count in 0...age{ //for i in range, same as for var i=0; i<=age; i++)
    print(count)
}

//functions
func sayHi(){
    print("Hi class")
}

sayHi()

func sayHello(first:String, last:String){
    print("Hi \(first) \(last)")
}

sayHello(first: "Bill", last: "Adams")

func sayWhat(firstName first:String, lastName last:String){
    print("What \(first) \(last)")
}

sayWhat(firstName: "Stacey", lastName: "Smith")
//if it was sayWhat(_ first:string) dont have external so dont need to pass a name when calling, ex(sayWhay("stacey")

func sayWhere(_ place:String){
    print(place)
} //underscore means not specifying a name

sayWhere("Boulder")

func sayWho(firstName: String, lastName:String) -> String {
    return "Who " + firstName + " " + lastName + "?"
}

let msg2 = sayWho(firstName: "Jim", lastName: "Adams")
print(msg2)

