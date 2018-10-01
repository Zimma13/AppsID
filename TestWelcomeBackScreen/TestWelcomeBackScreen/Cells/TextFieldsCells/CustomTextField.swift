//
//  CustomTextField.swift
//  TestWelcomeBackScreen
//
//  Created by Zimma on 01/10/2018.
//  Copyright © 2018 Zimma. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        
        layer.cornerRadius = frame.height / 15
        layer.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
    }
    
    func addLeftImage(image: UIImage) {
        
        let viewSize = frame.height
        
        //backgroundColorView
        let subView = UIView()
        let subViewSize = viewSize - 5
        subView.frame.size = CGSize(width: subViewSize, height: subViewSize)
        subView.layer.cornerRadius = subView.frame.width / 15
        subView.backgroundColor = Colors.bgColor
        
        //ImageView
        let leftImageView = UIImageView(image: image)
        leftImageView.image = image
        leftImageView.contentMode = .scaleAspectFit
        leftImageView.frame.size = CGSize(width: subViewSize / 1.9, height: subViewSize / 1.9)
        leftImageView.center = subView.center
        
        //View
        let view = UIView(frame: CGRect(x: 0, y: 0, width: viewSize + 10, height: viewSize))
        view.backgroundColor = UIColor.clear
        
        subView.center = view.center
        subView.addSubview(leftImageView)
        view.addSubview(subView)
        
        leftView = view
        leftViewMode = .always
    }
}
