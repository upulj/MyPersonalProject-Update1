//
//  SearchCategoriesTableViewController.swift
//  MyPersonalProject
//
//  Created by Upul Jayalath on 26/03/2015.
//  Copyright (c) 2015 Mine Inc. All rights reserved.
//

import UIKit

class SearchCategoriesTableViewController: UITableViewController {
    
    var phoneDirectorySearch = [
        ["category":"Business Organizations","imageIcon":"BusinessOranizationIcon"],
        ["category":"Government Organizations","imageIcon":"GovernmentOranizationIcon"],
        ["category":"Religious Places","imageIcon":"ReligiousPlacesIcon"],
        ["category":"Personal Names","imageIcon":"PersonalNamesIcon"],
        ["category":"Product Or Services","imageIcon":"ProductOrServicesIcon"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return countElements(phoneDirectorySearch)
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("fromCategorytoSearch", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...
        let phoneCategory = phoneDirectorySearch[indexPath.row]
        let categoryType = phoneCategory["category"]!
        cell.textLabel?.text = "\(categoryType)"
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        println("Testing by upulj..when taped---Section: \(indexPath.section)----Row: \(indexPath.row)")
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        if(segue.identifier == "goToSearch"){
            let row = tableView.indexPathForSelectedRow()!.row
            (segue.destinationViewController as ViewController).phoneCategory = phoneDirectorySearch[row]
        }
    }

}
