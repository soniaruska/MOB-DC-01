// Lesson 04 playground

import Foundation

// TODO: Create two variables, name and age. Name is a string, age is an integer.

var name: String = "Sonia"
var age = 33


// TODO: Print "Hello {whatever the value of name is}, you are {whatever the value of age is} years old!"

println("Hello \(name), you are \(age) years old!")
//"This is " + "interpolation." = name



// TODO: Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”

if age >= 21 {
    println("You can drink")
}

else if age >= 18 {
    println("you can vote")
}

else if age >= 16 {
    println("You can drive")
}


// TODO: Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.

if age > 16 && age < 18 {
    println("you can drive")
}

if age > 18 && age < 21 {
    println("You can drive and vote")
}

if age > 21 {
    println("you can drive, vote and drink (but not at the same time")
}


// TODO: Print the first fifty multiples of seven minus one (e.g. the first three multiples are 7, 14, 21. The first three multiples minus one are 6, 13, 20)

var x = 7
for index in 1...50 {
    println(index * x - 1)
}

for i in 1...50 {
    var multiple = 7 * i - 1
    println(multiple)
}

for var i = 1; i < 50; ++i {
    println(7 * i - 1)
}

// TODO: Create a constant called number

let number = 0



// TODO: Print whether the above number is even

if number % 2 == 0 && number != 0 {
    println("This is an even number")
}



// TODO: The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number. Print the 37th fibonacci number below

var fibNum = 9, current = 0, next = 1, result = 0
for index in 0..<fibNum {
    //current val is 3
    //tempVar becomes 3
    let tempVar = current
    //current value becomes next (5)
    current = next
    //next value becomes old current (temporary) + new current (old next)
    next = tempVar + current
    result = tempVar
}
println("Fib num is \(result)")



// TODO: Print out "Hello {whatever the value of name is}, your name is {however long the string name is} characters long!. Use countElements()

println("Hello \(name), you name is \(countElements (name)) characters long!.")



// TODO: Print the sum of one hundred random numbers. Use rand() to generate random numbers.

var sum = 0
for i in 1...100 {
    sum += Int(rand())
}
println(sum)

// Int = is type casting the random number to be an integer
// sum += 10 is the same as saying sum = sum + 10

var tempString = "10"
tempString.toInt()
tempString.toInt()!

var sum2 = 20
for i in 1...100 {
    sum2 += String(rand()).toInt()!
}
println(sum)


// Bonus TO DO: Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.

let fizz = 3
let buzz = 5

for var i = 1; i <= 100; ++i {
    if ((i % fizz) == 0 && (i % buzz) == 0) {
        println("FizzBuzz")
    }  else if i % fizz == 0 {
        println("Fizz")
    }  else if (i % buzz) == 0 {
        println("Buzz")
    }else {
        println(i)














