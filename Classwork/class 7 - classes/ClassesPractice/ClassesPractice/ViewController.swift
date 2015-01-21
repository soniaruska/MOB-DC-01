//
//  ViewController.swift
//  ClassesPractice
//
//  Created by Sonia Ourmaonva on 1/14/15.
//  Copyright (c) 2015 Sonia Ourmaonva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var animalDisplay: UILabel!
    
    @IBOutlet weak var animalName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
//    class Animal {
//        var name = ""
//        var species = ""
//
//    func stringRepresentation() -> String {
//    return ("The animal is a \(self.species), it's name is \(self.name).")
//    
    @IBAction func Cat(sender: AnyObject) {
        
        var myPet = Animal()
        myPet.name = animalName.text
        myPet.species = "cat"
        animalDisplay.text = myPet.stringRepresentation()
        
    }
    
    
    
    @IBAction func Dog(sender: AnyObject) {
    
        var myPet = Animal()
        myPet.name = animalName.text
        myPet.species = "dog"
        animalDisplay.text = myPet.stringRepresentation()
        
    }

    
}






















