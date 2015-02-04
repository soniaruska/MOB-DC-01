//
//  EventsTableViewController.swift
//  Delegation
//
//  Created by Thomas Degry on 28/01/15.
//  Copyright (c) 2015 Thomas Degry. All rights reserved.
//

import UIKit

class EventsTableViewController: UITableViewController, EventProtocol {
    
    @IBAction func addEventButton(sender: UIBarButtonItem) {
        let addEventVC = self.storyboard?.instantiateViewControllerWithIdentifier("addEventVC") as AddEventViewController
        addEventVC.delegate = self
        let navigationController = UINavigationController(rootViewController: addEventVC)
        self.presentViewController(navigationController, animated: true, completion: nil)
    }
    
    func addEvent(newEvent: Event) {
        println("foo")
        self.arrEvents.append(newEvent)
    }
    
    // event array
    var arrEvents:[Event] = []


    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrEvents.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("eventCell", forIndexPath: indexPath) as UITableViewCell
    
    // Configure the cell...
        let currentEvent = self.arrEvents[indexPath.row]
        cell.textLabel?.text = currentEvent.name
        cell.detailTextLabel?.text = currentEvent.location
        
    
    return cell
    }
    
}
