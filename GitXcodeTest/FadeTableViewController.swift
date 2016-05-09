//
//  FadeTableViewController.swift
//  GitXcodeTest
//
//  Created by zdaecqze zdaecq on 09.05.16.
//  Copyright © 2016 zdaecqze zdaecq. All rights reserved.
//

import UIKit

class FadeTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        
        
        //if let containerView = tableView.backgroundView {
            //let gradient = CAGradientLayer(layer: containerView.layer)
            //gradient.frame = containerView.bounds
            //gradient.colors = [UIColor.clearColor().CGColor, UIColor.blueColor().CGColor]
            //gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
            //gradient.endPoint = CGPoint(x: 0.0, y: 0.85)
            //containerView.layer.mask = gradient
        //}
        
        let gradient = CAGradientLayer()
        
        gradient.frame = tableView.superview?.bounds ?? CGRectNull
        gradient.colors = [UIColor.clearColor().CGColor, UIColor.clearColor().CGColor, UIColor.blackColor().CGColor, UIColor.blackColor().CGColor, UIColor.clearColor().CGColor, UIColor.clearColor().CGColor]
        gradient.locations = [0.0, 0.15, 0.25, 0.75, 0.85, 1.0]
        tableView.superview?.layer.mask = gradient
        
        tableView.backgroundColor = UIColor.clearColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 100
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        cell.textLabel?.text = "Hi \(indexPath.row + 1)"

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
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
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
