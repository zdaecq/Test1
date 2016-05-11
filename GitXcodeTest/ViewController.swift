//
//  ViewController.swift
//  GitXcodeTest
//
//  Created by zdaecqze zdaecq on 09.05.16.
//  Copyright © 2016 zdaecqze zdaecq. All rights reserved.
//

import UIKit
import DigitsKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let authButton = DGTAuthenticateButton(authenticationCompletion: { (session: DGTSession?, error: NSError?) in
            if (session != nil) {
                // TODO: associate the session userID with your user model
                let message = "Phone number: \(session!.phoneNumber)"
                let alertController = UIAlertController(title: "You are logged in!", message: message, preferredStyle: .Alert)
                alertController.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: .None))
                self.presentViewController(alertController, animated: true, completion: .None)
            } else {
                NSLog("Authentication error: %@", error!.localizedDescription)
            }
        })
        authButton.center = self.view.center
        self.view.addSubview(authButton)

        

        let newView = UIView(frame: CGRect(x: 50, y: 50, width: 50, height: 50))
        newView.backgroundColor = UIColor.redColor()
        view.addSubview(newView)

        //let gradientLayer = CAGradientLayer()
        //gradientLayer.frame = view.frame.insetBy(dx: 50, dy: 10)
        //gradientLayer.colors = [UIColor.redColor().CGColor, UIColor.clearColor().CGColor]
        //gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        //gradientLayer.endPoint = CGPoint(x: 0, y: 0.5)
        
        //let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        //let blurView = UIVisualEffectView(effect: blurEffect)
        //blurView.frame = view.bounds
        //blurView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        //view.addSubview(blurView)

        //view.setupBlurWithStyle(.Dark)
        
        //view.layer.addSublayer(gradientLayer)
        //view.addSubview(blurView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

