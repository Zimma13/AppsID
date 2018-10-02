//
//  TextFieldTableViewCell.swift
//  TestWelcomeBackScreen
//
//  Created by Zimma on 28/09/2018.
//  Copyright © 2018 Zimma. All rights reserved.
//

import UIKit



class TextFieldTableViewCell: UITableViewCell {
    
    @IBOutlet weak var textField: CustomTextField!
    
    var textFieldChenged: ((String) -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.backgroundColor = Colors.bgColor
        
    }
    
    func textFieldChenge(textFieldParam: textFieldLeftImageKey) {
        
        textField.placeholder = textFieldParam.rawValue
        textField.addLeftImage(image: UIImage(named: textFieldParam.rawValue)!)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if touches.first != nil {
            
            contentView.endEditing(true)
            
        }
        
        super.touchesBegan(touches, with: event)
    }
}
