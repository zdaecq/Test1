//
//  FadeTableViewController.swift
//  GitXcodeTest
//
//  Created by zdaecqze zdaecq on 09.05.16.
//  Copyright © 2016 zdaecqze zdaecq. All rights reserved.
//

import UIKit

class FadeTableViewController: UITableViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    func injected() {
        print("I've been injected: \(self)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()


        tableView.registerNib(UINib(nibName: "FlipingCell", bundle: nil), forCellReuseIdentifier: "Cell")

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

        //let gradient = CAGradientLayer()

        //gradient.frame = tableView.superview?.bounds ?? CGRectNull
        //gradient.colors = [UIColor.clearColor().CGColor, UIColor.clearColor().CGColor, UIColor.blackColor().CGColor, UIColor.blackColor().CGColor, UIColor.clearColor().CGColor, UIColor.clearColor().CGColor]
        //gradient.locations = [0.0, 0.15, 0.25, 0.75, 0.85, 1.0]
        //tableView.superview?.layer.mask = gradient

        //tableView.backgroundColor = UIColor.clearColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func swipeGesture(sender: UISwipeGestureRecognizer) {

    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 30
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //CustomCell
        //Cell
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomCell", forIndexPath: indexPath) as! CustomCell
        cell.selectionStyle = .None

        //cell.textLabel?.text = "Hi \(indexPath.row + 1)"

        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

    }
    
    // MARK: - col view
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CustomColCell", forIndexPath: indexPath)// as! CustomColCell
        //collectionView.dequeueReusableCellWithReuseIdentifier(<#T##identifier: String##String#>, forIndexPath: <#T##NSIndexPath#>)
        return cell
    }

    


}
