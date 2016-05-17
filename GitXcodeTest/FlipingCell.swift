//
//  FlipingCell.swift
//  GitXcodeTest
//
//  Created by zdaecqze zdaecq on 14.05.16.
//  Copyright © 2016 zdaecqze zdaecq. All rights reserved.
//

import UIKit

class FlipingCell: UITableViewCell {

    var isFront = true
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var front: UIView!
    @IBOutlet weak var back: UIView!
    @IBOutlet weak var under: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
