//
//  EventsTableViewController.swift
//  Delegation
//
//  Created by Thomas Degry on 28/01/15.
//  Copyright (c) 2015 Thomas Degry. All rights reserved.
//

import UIKit

class EventsTableViewController: UITableViewController {
    
    @IBAction func addEventButton(sender: AnyObject) {
        let addEventVC = self.storyboard?.instantiateViewControllerWithIdentifier("addEventVC") as AddEventViewController
        let navigationController = UINavigationController(rootViewController: addEventVC)
        self.presentViewController(navigationController, animated: true, completion: nil)
    }
    
    
    // event array
    var arrEvents:[Event] = []


    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell
    
    // Configure the cell...
    
    return cell
    }
    */

}
