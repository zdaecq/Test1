//
//  CustomCell.swift
//  GitXcodeTest
//
//  Created by zdaecqze zdaecq on 13.05.16.
//  Copyright © 2016 zdaecqze zdaecq. All rights reserved.
//

import UIKit

protocol FlipCellProtocol: class {
    var front: UIView! { get }
    var back: UIView! { get }
    var isFront: Bool { get set }
    func flipCell()
}

extension FlipCellProtocol where Self: UIView {
    
    //var isFront: Bool {
        //return true
    //}
    
    func flipCell() {
        
        if isFront {
            UIView.transitionWithView(self, duration: 1, options: .TransitionFlipFromLeft, animations: {
                self.front.hidden = true
                self.back.hidden = false
                }, completion: nil)
            
        } else {
            UIView.transitionWithView(self, duration: 1, options: .TransitionFlipFromRight, animations: {
                self.front.hidden = false
                self.back.hidden = true
                }, completion: nil)
        }
        
        isFront = !isFront
    }
}


@objc
protocol TapViewProtocol: class {
    func actionTapGesture(sender: UITapGestureRecognizer)
}

extension TapViewProtocol where Self: UIView {
    func addTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(TapViewProtocol.actionTapGesture(_:)))
        self.addGestureRecognizer(tapGesture)
    }
}


//extension TapViewProtocol where Self: FlipCellProtocol {
    //func actionTapGesture(sender: UITapGestureRecognizer) {
        //flipCell()
    //}
//}



class CustomCell: UITableViewCell, FlipCellProtocol, TapViewProtocol {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var front: UIView!
    @IBOutlet weak var back: UIView!
    @IBOutlet weak var under: UIView!
    @IBOutlet weak var containerLeftConstrant: NSLayoutConstraint!
    @IBOutlet weak var frontLeftConstraint: NSLayoutConstraint!
    
    var isFront = true
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        addTapGesture()
    }
    
    func actionTapGesture(sender: UITapGestureRecognizer) {
        flipCell()
    }

}

class CustomColCell: UICollectionViewCell, FlipCellProtocol, TapViewProtocol {
    
    @IBOutlet weak var front: UIView!
    @IBOutlet weak var back: UIView!
    
    var isFront = true
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        addTapGesture()
    }
    
    func actionTapGesture(sender: UITapGestureRecognizer) {
        flipCell()
    }
    
}
