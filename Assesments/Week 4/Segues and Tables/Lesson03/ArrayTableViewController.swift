
import UIKit

class ArrayTableViewController: UITableViewController {
    
    /*
        TODO five: Populate the table view with the contents of animalArray.
        Bonus: Add delete cell on swipe feature.
    */
    let animalArray = [Animal(name: "Rover"), Animal(name: "Mittens"), Animal(name: "Ein"), Animal(name: "Sadie")]
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
        
        // Add code to populate cells
        
        return cell
    }
}
