//
//  ViewController.swift
//  ios delegates
//
//  Created by Sonia Ourmaonva on 2/2/15.
//  Copyright (c) 2015 Sonia Ourmaonva. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    
    @IBOutlet var campusesTable: UITableView!
    @IBOutlet var stuffTextField: UITextField!
    
    var gaCampuses: [String] = []
//    var gaCampuses = ["DC", "MD", "NY", "LA"]
    
    //to add a delegate to a text field
    // 1. add UITextFieldDelegate protocol
    // 2. connect Text Field outlet
    // 3. tie textField.delegate = self
    // 4. add the text field method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if gaCampuses.isEmpty {
            println("Your table view is empty")
            campusesTable.hidden = true
        }
        stuffTextField.delegate = self
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        println("Return key was pressed!")
        textField.resignFirstResponder()
        return true
        //this listens to the "return" key and removes the key board from the view
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // this function is required for table
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    // this function is required for table
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.gaCampuses.count
        //sets the number of cells in the table equal to the number of items in the array
    }
    
    // this function is required for table
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
        //sets each cell to equal each item in the array
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.grayColor()
            //sets cell background color

            cell.textLabel?.textColor = UIColor.whiteColor()

        }
        
        cell.textLabel?.text = self.gaCampuses[indexPath.row]
        return cell
        //sets text color
    }



}

