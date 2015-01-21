// Playground - noun: a place where people can play

import UIKit

//class Animal {
//    var numberOfLegs = 0
//    var hasFur = true
//    
//    func speak() {
//        
//    }
//}



class Animal {
    var numberOfLegs = 0
    var hasFur = false
    var noise = "AAAAAAH"
    
    init(legs: Int, hasFur: Bool) {
        self.numberOfLegs = legs
        self.hasFur = hasFur
// to access variables outside the function {} but within class use self.(Variable/Property)
    }
    
    func speak() {
        println(self.noise)
    }
}

//whenever you set a parameter it will prompt the user to put in something

var tedi = Animal(legs: 2, hasFur: false)
tedi.speak()
println(tedi.numberOfLegs)

var ena = Animal(legs: 4, hasFur: true)
ena.hasFur = true
ena.numberOfLegs = 4

