//
//  TextFieldTableViewCell.swift
//  TestWelcomeBackScreen
//
//  Created by Zimma on 28/09/2018.
//  Copyright © 2018 Zimma. All rights reserved.
//

import UIKit

class TextFieldTableViewCell: UITableViewCell {
    
    @IBOutlet weak var textField: UITextField!
    
    var textFieldChenged: ((String) -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.backgroundColor = Colors.bgColor
        
        textField.layer.cornerRadius = frame.height / 15
        textField.layer.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
    }
    
    //Choice TextField
    enum textFieldEmailOrPassword: String {
        case email = "Email"
        case pass = "Password"
    }
    
    //Choice TextField func
    func textFieldChenge(textFieldParam: textFieldEmailOrPassword) {
        textField.placeholder = textFieldParam.rawValue
        addLeftImageTo(textField: textField, andImage: UIImage(named: textFieldParam.rawValue)!)
    }
    
    // add image to TextFields
    func addLeftImageTo(textField: UITextField, andImage img: UIImage) {
        
        let viewSize = textField.frame.height

        //backgroundColorView
        let subView = UIView()
        let subViewSize = viewSize - 5
        subView.frame.size = CGSize(width: subViewSize, height: subViewSize)
        subView.layer.cornerRadius = subView.frame.width / 15
        subView.backgroundColor = Colors.bgColor
        
        //ImageView
        let leftImageView = UIImageView(image: img)
        leftImageView.image = img
        leftImageView.contentMode = .scaleAspectFit
        leftImageView.frame.size = CGSize(width: subViewSize / 1.9, height: subViewSize / 1.9)
        leftImageView.center = subView.center
        
        //View
        let view = UIView(frame: CGRect(x: 0, y: 0, width: viewSize + 10, height: viewSize))
        view.backgroundColor = UIColor.clear
        
        subView.center = view.center
        subView.addSubview(leftImageView)
        view.addSubview(subView)
        
        textField.leftView = view
        textField.leftViewMode = .always
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil {
            contentView.endEditing(true)
        }
        super.touchesBegan(touches, with: event)
    }
}
