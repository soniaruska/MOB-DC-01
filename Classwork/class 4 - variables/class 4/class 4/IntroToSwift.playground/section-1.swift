// Playground - noun: a place where people can play


import UIKit


/*
this is a comment block
*/

// this is a comment

// Strings are usually represented in double quotes

"This is a string"

// integers are whole numbers

5
8
10000000

// Doubles and floats are numbers with desimals
// when you create numbers with desimals, Swift auto assignes it as a double

54.76

// Boolean is a true or false statement

true
false

// Arrays: to be covered later (book analogy, data referenced by page number)

// Dictionaries: to be covered later (Definition referenced by word)

// Variable: inferred

var myVariable = "Hello world"
println(myVariable)

var mySecondVariable: String = "Hello world again"
mySecondVariable = "hello"

var x = 10

var y = 4

x + y
x * y
x / y

//not getting remainder because inferred type if var is and int (integer)

x - y

var a = 10.0

var b = 4.0

a + b
a * b
a / b

// you can assign the value of Double or Float to get the remainder

x % y

// this is the modelus (%) to see the remainder of the value after divinding the number into each other (whole numbers)

y = 20
println(y)

let myName = "Sonia"
//myMame = "John" will error out because constants can't be changed

var amIHere: String? = "Yes"
println(amIHere!)

//nil = non existing value - lets us see if a value exists, good testing device

/******** control flow ****************/


if y == 5 {
println("5 is 5")
println("Another line of code")

        
}

var myAge = 22
    if myAge < 21 {
        println("You can't come in!")
    }else if myAge == 21 {
        println("Free drinks!")
    }else if myAge > 21 && myAge < 25{
        println("You can drink, but you can't rent a car")
    }else{
        println("You can party")
        
    }

// == equal to
// <= less than or equal to
// >= grater or equal to
// != not equal to
    
var yourAge = 22
if yourAge != 21 {
    println("You can't get in!")
}else if yourAge == 21 {
    println("Free drinks!")
}else if yourAge > 21 && yourAge < 25{
    println("You can drink, but you can't rent a car")
}else{
    println("You can party")
    
}


for var i = 2; i < 5; ++i {
    println("Code is running\(i)")
}

// 1...5 means numbers between 1 and 5
// 1..<5 would be 1 through 4
// 1..>5 would be 1 through 6
// ++i would add 1 to i after every run

for index in 1...5 {
    println(index)
}

var k = 1
while k < 10 {
    println("counting")
    ++k
}


println(k)
















