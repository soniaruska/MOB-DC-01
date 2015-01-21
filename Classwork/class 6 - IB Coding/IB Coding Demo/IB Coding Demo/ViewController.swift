//
//  ViewController.swift
//  IB Coding Demo
//
//  Created by Sonia Ourmaonva on 1/12/15.
//  Copyright (c) 2015 Sonia Ourmaonva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
  
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func changeLabel(sender: AnyObject) {
        nameLabel.text = nameTextField.text
        
    }
    
    
    @IBAction func changeLabelOnDrag(sender: UISlider) {
        let sliderValue = sender.value
        nameLabel.text = "\(Int(sliderValue))"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("testing loaded view")
    }
    
}


























