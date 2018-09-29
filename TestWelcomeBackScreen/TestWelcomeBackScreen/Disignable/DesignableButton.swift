//
//  DesignableButton.swift
//  TestWelcomeBackScreen
//
//  Created by Zimma on 28/09/2018.
//  Copyright © 2018 Zimma. All rights reserved.
//

import UIKit

@IBDesignable class DesignableButton: UIButton {
    
    override func draw(_ rect: CGRect) {
        
        layer.borderWidth = 1
        layer.borderColor = Colors.textColorLight.cgColor
        setTitle("LOGIN", for: .normal)
        titleLabel?.font = UIFont(name: "AvenirNext-Bold", size: 13)
        setTitleColor(Colors.textColorLight, for: .normal)
        layer.cornerRadius = frame.height / 15
    }

}
