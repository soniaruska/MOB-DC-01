// Playground - noun: a place where people can play

import UIKit

var view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
view.backgroundColor = UIColor.purpleColor()
view.backgroundColor = UIColor.redColor()

class Animal {

    var name: String
    var legs: Int
    init(legs: Int, name: String) {
        self.legs = legs
        self.name = name
    }
    func speak() {
        println("Yelp")
    }
}

class Dog: Animal {
//    var legs = 4

    var isSmart = true
    override func speak() {
        println("Woof!")
    }
}

var doggie = Dog(legs: 4, name: "Georgia")
doggie.legs
doggie.speak()
doggie.isSmart

// to override isSmart do doggie.isSmart = false












