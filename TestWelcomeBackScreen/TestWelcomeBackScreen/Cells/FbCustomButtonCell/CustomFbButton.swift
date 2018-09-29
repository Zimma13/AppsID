//
//  CustomFbButton.swift
//  TestWelcomeBackScreen
//
//  Created by Zimma on 28/09/2018.
//  Copyright © 2018 Zimma. All rights reserved.
//

import UIKit

@IBDesignable class CustomFbButton: UIButton {
    
    override func draw(_ rect: CGRect) {

        layer.backgroundColor = #colorLiteral(red: 0.1255526841, green: 0.5244877934, blue: 0.5891629457, alpha: 1)
        contentHorizontalAlignment = .left
        
        //img
        setImage(UIImage(named: "facebook"), for: .normal)
        imageEdgeInsets = UIEdgeInsets(top: 15, left: 0, bottom: 15, right: 0)
        imageView?.contentMode = .scaleAspectFit
        
        //title
        setTitleColor(Colors.textColor, for: .normal)
        setTitle("LOGIN WITH FACEBOOK", for: .normal)
        titleLabel?.font = UIFont(name: "AvenirNext-Bold", size: 18)
        titleLabel?.minimumScaleFactor = 0.5
        titleLabel?.adjustsFontSizeToFitWidth = true
        
        layer.cornerRadius = frame.size.height / 15
        layer.borderWidth = 1
        layer.borderColor = #colorLiteral(red: 0.2971834838, green: 0.6185828447, blue: 0.6705865264, alpha: 1)
        
    }
}
