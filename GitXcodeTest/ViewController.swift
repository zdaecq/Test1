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

    @IBOutlet weak var flipingVew: UIView!
    @IBOutlet var tapGesture: UITapGestureRecognizer!

    var back: UIView!
    var front: UIView!
    var isFront: Bool = false


    
    override func viewDidLoad() {
        super.viewDidLoad()


        let singleTap = UITapGestureRecognizer(target: self, action: #selector(ViewController.tapped))
        singleTap.numberOfTapsRequired = 1


        front = UIView(frame: flipingVew.bounds)
        front.backgroundColor = UIColor.redColor()

        back = UIView(frame: flipingVew.bounds)
        back.backgroundColor = UIColor.blueColor()

        flipingVew.addSubview(back)
        //self.injected()
        //flipingVew.bringSubviewToFront(back)


        /*
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
        */




        let newView = UIView(frame: CGRect(x: 100, y: 50, width: 50, height: 50))
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

    func tapped() {

    }

    @IBAction func actionTapGesture(sender: UITapGestureRecognizer) {

        if isFront {
            UIView.transitionFromView(front, toView: back, duration: 1, options: .TransitionFlipFromLeft, completion: nil)
            isFront = false
        } else {
            UIView.transitionFromView(back, toView: front, duration: 1, options: .TransitionFlipFromRight, completion: nil)
            isFront = true
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
