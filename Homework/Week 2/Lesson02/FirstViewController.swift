//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBAction func generateText1(sender: AnyObject) {
//        func printHelloWorld() -> String {
//            return ("hello world!")}
        
        printsTextHere.text = "hello world!"
    }
    
    @IBOutlet weak var printsTextHere: UILabel!
    
    @IBOutlet weak var printsPersonalGreeting: UITextField!
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var userAge: UITextField!
    
    @IBOutlet weak var youCan: UILabel!
    
    @IBAction func personalGreeting(sender: AnyObject) {
    
        printsPersonalGreeting.text = "Hello \(userName.text), you are \(userAge.text) years old!"
    }
    
    @IBAction func youCanDo(sender: AnyObject) {
        var userAge:Int = 0
        youCan(self.userAge)

    }
    
    
//    
//    @IBAction func youCan(sender: AnyObject) {
//        func youCan(age: Int?) -> String {
//            let userAge = age **the input from the Age field**
//            if age >= 16 {
//                return "You can drive"
//            } else if years >= 18 {
//                return "You can vote"
//            } else if years >= 21 {
//                return "You can drink"
//            }
//            else {
//                return "Too young dude!"
//            }
//        }
//    }
//    
    
//        class UserInfo {
//            var name = ""
//            var age = 0
//            
//            func stringRepresentation() -> String {
//                return ("Hello \(name), you are \(age) years old!")
//            }
    
    
    
    if age > 16 && age < 18 {
    println("you can drive")
    }
    
    if age > 18 && age < 21 {
    println("You can drive and vote")
    }
    
    if age > 21 {
    println("you can drive, vote and drink (but not at the same time")
    
    
    
    
    /*
    TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’
    
    
    TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
    

    TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    
    
    TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    */










}
