//
//  ViewController.swift
//  Arrays-TableViews-Delegation
//
//  Created by Sonia Ourmaonva on 1/28/15.
//  Copyright (c) 2015 Sonia Ourmaonva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var displayList: UITextView!
    
    @IBOutlet var newItem: UITextField!
    
    @IBAction func addToList(sender: AnyObject) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            
//        toDoList.append(addNewItem)
//        displayList.text = toDoList
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

