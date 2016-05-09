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
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.frame.insetBy(dx: 50, dy: 10)
        gradientLayer.colors = [UIColor.redColor().CGColor, UIColor.clearColor().CGColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 0.5)
        
        //view.setupBlurWithStyle(.Dark)
        
        //view.layer.addSublayer(gradientLayer)
        //view.addSubview(blurView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

