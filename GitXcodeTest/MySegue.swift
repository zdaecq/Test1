//
//  MySegue.swift
//  GitXcodeTest
//
//  Created by zdaecqze zdaecq on 15.05.16.
//  Copyright © 2016 zdaecqze zdaecq. All rights reserved.
//

import UIKit

class MySegue: UIStoryboardSegue {

    override func perform() {
        let nc = sourceViewController.navigationController
        nc?.popToRootViewControllerAnimated(false)
        sourceViewController.presentViewController(destinationViewController, animated: true, completion: nil)
        
        //sourceViewController.navigationController?.setViewControllers([destinationViewController], animated: true)
        //sourceViewController.presentViewController(destinationViewController, animated: true, completion: nil)
    }
    
}
