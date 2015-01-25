// Playground - noun: a place where people can play

import UIKit


protocol Flight {
    var wings: Bool { get set }
    var beakSize: Int { get set }
    func canFly (animal: Animal) -> Bool
    
}

protocol Talk {
    func speak() -> String
}

class Penguin: Flight {
    var wings = true
    var beakSize = 6
    func canFly(animal: Animal) -> Bool {
        return true
    }
}

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


class Human: Animal, Talk{
    func speak() -> String {
        return "Hello world"
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

var skippy = ena
ena.legs
skippy.legs = 5
ena.legs

func doesAnimalHaveClaws(passingAnimal: Animal) -> Bool {
    return passingAnimal.hasClaws
}

let tedi = Animal(hasClaws: true, legs: 2)
doesAnimalHaveClaws(tedi)

doesAnimalHaveClaws(ena)



struct Rectangle {
    var width: Int
    var height: Int
    
    func getArea() -> Int {
        return width * height
    }
    
}

let myRectangle = Rectangle(width: 50, height: 100)

var myOtherRect = myRectangle
myOtherRect.width = 70
myRectangle.width

myRectangle.getArea()
myOtherRect.getArea()
















