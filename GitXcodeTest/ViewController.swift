//
//  ViewController.swift
//  GitXcodeTest
//
//  Created by zdaecqze zdaecq on 09.05.16.
//  Copyright © 2016 zdaecqze zdaecq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let newView = UIView(frame: CGRect(x: 50, y: 50, width: 50, height: 50))
        newView.backgroundColor = UIColor.redColor()
        view.addSubview(newView)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

