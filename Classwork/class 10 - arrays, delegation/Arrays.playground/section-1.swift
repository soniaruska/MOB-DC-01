// Playground - noun: a place where people can play

import UIKit

var myArray = [1, 4, 10, 15, 20]

//this is an array of intigers

var secondArray: [Int] = []

//an empty array has to be explicit in it's type

var stringArray: [String] = []

// this is an empty string array


myArray[2]
//accesses the third element in myArray

myArray.first
//returns an optional in the first place of the array

myArray.last!
//returns and anwraps the last emtry in the array

secondArray.append(20)
//append will always add to the end of the array

secondArray

secondArray.append(10)
//append is a built in method

myArray.insert(100, atIndex: 2)
//this will insert a value in the third spot of the array 
//2 is the third spot because it starts with 0

myArray.count
//this will give me the count of how many elements are in the array

myArray.insert(50, atIndex: myArray.count - 1)
//this will add 50 into the next to last place

myArray.count
myArray.isEmpty
//will check if your array is empty

stringArray.isEmpty

myArray.removeAtIndex(2)
//this will remove the third element in the array

myArray[1] = 40
//this will replace the the secont element of the array with the one youre passing

myArray.removeAtIndex(myArray.count - 1)
//removes the last element in the array

myArray.append(100)


for i in myArray {
    if i == 100 {
        println("BINGO")
    }
    println("the value is \(i)")
}














