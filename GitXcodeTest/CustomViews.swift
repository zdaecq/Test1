//
//  CustomViews.swift
//  GitXcodeTest
//
//  Created by zdaecqze zdaecq on 09.05.16.
//  Copyright © 2016 zdaecqze zdaecq. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class GradientView: UIView {
    @IBInspectable var startColor: UIColor = UIColor.whiteColor()
    @IBInspectable var endColor: UIColor = UIColor.whiteColor()
    
    override class func layerClass() -> AnyClass {
        return CAGradientLayer.self
    }
    
    override func layoutSubviews() {
        (layer as! CAGradientLayer).colors = [startColor.CGColor, endColor.CGColor]
    }
}

@IBDesignable class GradientViewMy: UIView {
    
    //MARK: Properties
    @IBInspectable var topColor: UIColor = UIColor.redColor()
    
    @IBInspectable var bottomColor: UIColor = UIColor.clearColor()
    
    @IBInspectable var bottomYPoint: CGFloat = 0.6
    
    var gradientLayer: CAGradientLayer!
    
    //MARK: Initializers
    override init(frame : CGRect) {
        super.init(frame : frame)
        setupGradientLayer()
    }
    
    convenience init() {
        self.init(frame:CGRectZero)
        setupGradientLayer()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupGradientLayer()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupGradientLayer()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupGradientLayer()
    }
    
    func setupGradientLayer() {
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = frame
        gradientLayer.colors = [topColor.CGColor, bottomColor.CGColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: bottomYPoint)
        layer.addSublayer(gradientLayer)
    }

    
}

@IBDesignable class BlurView: UIView {
    
    @IBInspectable var isOn: Bool = true {
        didSet {
            if isOn {
                self.setupBlurWithStyle(.Dark)
            }
        }
    }
    
}

@IBDesignable class ButtonExtender: UIButton {
    
    //MARK: PROPERTIES
    @IBInspectable var borderColor: UIColor = UIColor.whiteColor() {
        didSet {
            layer.borderColor = borderColor.CGColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 1.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornurRadius: CGFloat = 1.0 {
        didSet {
            layer.cornerRadius = cornurRadius
            clipsToBounds = true
        }
    }
    
    //MARK: Initializers
    override init(frame : CGRect) {
        super.init(frame : frame)
        setup()
        configure()
    }
    
    convenience init() {
        self.init(frame:CGRectZero)
        setup()
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
        configure()
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
        configure()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setup()
        configure()
    }
    
    func setup() {
        layer.borderColor = UIColor.whiteColor().CGColor
        layer.borderWidth = 1.0
        layer.cornerRadius = 1.0
    }
    
    func configure() {
        layer.borderColor = borderColor.CGColor
        layer.borderWidth = borderWidth
        layer.cornerRadius = cornurRadius
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}

@IBDesignable class OCRoundButton: UIButton {
    
    @IBInspectable var isRounded: Bool = false {
        didSet {
            if isRounded {
                layer.cornerRadius = self.frame.height / 2
                layer.masksToBounds = isRounded
            } else {
                layer.cornerRadius = 0
            }
        }
    }
    
}

@IBDesignable class OCPlaceholderTextField : UITextField {
    
    @IBInspectable var placeholderColor: UIColor? {
        didSet {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder!, attributes:[NSForegroundColorAttributeName: placeholderColor!])
        }
    }
    
}

extension UIView {
    func setupBlurWithStyle(style: UIBlurEffectStyle = .Light) {
        let blurEffect = UIBlurEffect(style: style)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = self.frame
        self.addSubview(blurView)
    }
}





