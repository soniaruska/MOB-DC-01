// Playground - noun: a place where people can play

import UIKit

func hello() {
    println("Hello world")
}

hello()
hello()

func sum(firstNum: Int, secondNum: Int) -> Int {
   let newSum = firstNum + secondNum
    return newSum
    
    //return firstNum + secondNum
    //will give the same return
}

sum(10, 10)
sum(20, 10)

var x = sum(10, 20)
var y = sum(x, 15)



func fib(fibPlace place: Int?) -> Int {
    var fibNum = place!, current = 0, next = 1, result = 0
    for index in 0..<fibNum {
        
        let tempVar = current
        
        current = next
        next = tempVar + current
        result = tempVar
    }
    
    return result
}

var q = 8


fib(fibPlace: 9)
fib(fibPlace: 23)
fib(fibPlace: 30)

//fibPlace clues the user to what they should put in
//#place is shortcut for place place

var num: Int? = 5
if let numValue = num {
    println(numValue + 5)
}

// when you set something as an optional 
// temporarialy setting the optional to something then unwrapping it is best practice

//set temporary value with if let function, then unwrap it



func save(name: String) -> (first: String, last: String) {
    var firstName = name
    var lastName = "Ourmanova"
    return (name, lastName)
}

var myName = save("Sonia")
myName.first
myName.last
























