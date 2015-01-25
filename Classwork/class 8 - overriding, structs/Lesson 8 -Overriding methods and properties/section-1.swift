// Playground - noun: a place where people can play

import UIKit

class Animal {
    var legs: Int
    var fur: Bool = false
    var hasClaws: Bool
    
    init(hasClaws: Bool, legs: Int) {
        self.hasClaws = hasClaws
        self.legs = legs
        println("Hello world")
        
    }
    
    func speak () {
        println("Hello world")
    }
    
    func describeAnimal() {
        println("This animal has \(self.legs) legs")
    }
}

class Dog: Animal {
    override var fur: Bool {
        get {
            //return whatever the fur variable is set as
            return true
        }
        set {
            // override the inherited property to the new value set by the sub class
            super.fur = newValue
        }
    
    }
    
    override func speak() {
        //super.method also runs the method that the class inherited from
        println("Woof woof")
    }
}

var sonia = Animal(hasClaws: false, legs: 2)
var ena = Dog(hasClaws: true, legs: 4)
ena.speak()
ena.fur
//ena.fur = true




















