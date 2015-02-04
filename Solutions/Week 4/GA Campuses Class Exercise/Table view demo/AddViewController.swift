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

    @IBOutlet weak var addTextBox: UITextField!
    
    @IBOutlet var errorMessage: UILabel!
    
    var delegate: Campus?
    
    @IBAction func saveAndGoBack(sender: AnyObject) {
        self.delegate?.addCampusToArray(addTextBox.text)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()


        self.addTextBox.delegate = self
        self.errorMessage.hidden = true
        
        func textFieldShouldReturn(textField: UITextField) -> Bool {
            if self.addTextBox.text.isEmpty {
                println("Your text field is empty, enter something!")
                textField.resignFirstResponder()
                self.errorMessage.hidden = false
            }else{
                self.errorMessage.hideen = true
            }
            return true
        }
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
