//
//  AddViewController.swift
//  Table view demo
//
//  Created by Tedi Konda on 1/28/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import UIKit

protocol Campus {
    func addCampusToArray(campusName: String)
}

class AddViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var hiddenLabel: UILabel!
    @IBOutlet weak var addTextBox: UITextField!
    
    @IBOutlet var errorMessage: UILabel!
    
    var delegate: Campus?
    
    @IBAction func saveAndGoBack(sender: AnyObject) {
        self.delegate?.addCampusToArray(addTextBox.text)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func pressPostButton(sender: AnyObject) {
        // first step in setting notification
        NSNotificationCenter.defaultCenter().postNotificationName("unhideHiddenLabels", object: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addTextBox.delegate = self
        self.errorMessage.hidden = true
        self.hiddenLabel.hidden = true
        
        // second step: listen Notification
        // selector means it's a function that runs when the event is triggered
        //addObserver listens for the notification
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "unhideCurrentLabels:", name: "unhideHiddenLabels", object: nil)
        
        //third step - define the function
       
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "textHasChanged:", name: UITextFieldTextDidChangeNotification, object: nil)
        
        
        

        // Do any additional setup after loading the view.
    }
    
    func unhideCurrentLabels(notification: NSNotification) {
        self.hiddenLabel.hidden = false
        println("Triggered unhideHiddenLabel notification")
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        println("testing")
        if self.addTextBox.text.isEmpty {
            errorMessage.text = "You need to add text to the text field"
            errorMessage.hidden = false
        }
        
        return true
    }
    
    func textHasChanged(notification: NSNotification) {
        println("Hooray, text has changed!")
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
