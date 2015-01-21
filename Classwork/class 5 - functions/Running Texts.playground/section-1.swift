// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func totalBillAndTip(billAmount: Double, tip: Double) -> (totalBill: Double, tipAmount: Double) {
    
    //would this be where i set the tip to an optional value? to have the user put in what persentage he/she wants to tip?
    
    var tipAmount = (billAmount * tip)
    var total = billAmount + tip
    return (total, tipAmount)
}

totalBillAndTip(10.5, 0.2)

totalBillAndTip(25.50, 0.15)

totalBillAndTip(125.50, 0.0)




func fib(n: Int) -> Int {
    var fibNum = n, current = 0, next = 1, result = 0
    for index in 0..<fibNum {
        
        let tempVar = current
        
        current = next
        next = tempVar + current
        result = tempVar
    }
    
    return result
}


fib(5)


func addFibNumbers(multipleFib: Int) -> Int {
    var multipleFib = 20  //do i need this line??
    for i in 1...multipleFib {
        //call fib()
        let currentFibNum = //result from running fib()
        //then run fib() again for the second number in the range
        //then +=currentFibNum
        //print the last currentFibNum
        
        println(currentFibNum) }
}

addFibNumbers(20)
