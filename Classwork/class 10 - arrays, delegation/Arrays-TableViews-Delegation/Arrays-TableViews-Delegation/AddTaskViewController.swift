//
//  addTaskViewController.swift
//  Arrays-TableViews-Delegation
//
//  Created by Sonia Ourmaonva on 2/1/15.
//  Copyright (c) 2015 Sonia Ourmaonva. All rights reserved.
//

import UIKit

protocol ToDoList {
    func addTaskToArray(newTask: String)
}

class addTaskViewController: UIViewController {

    @IBOutlet var addTextBox: UITextField!
    var delegate: ToDoList?
    
    @IBAction func addAndGoBack(sender: AnyObject) {
        self.delegate?.addTaskToArray(addTextBox.text)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
