//
//  ForgottenPassTableViewCell.swift
//  TestWelcomeBackScreen
//
//  Created by Zimma on 28/09/2018.
//  Copyright © 2018 Zimma. All rights reserved.
//

import UIKit

class ForgottenPassTableViewCell: UITableViewCell {
    
    @IBOutlet weak var forgottenPassButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.backgroundColor = Colors.bgColor
        
        forgottenPassButton.setTitleColor(Colors.textColor, for: .normal)
        forgottenPassButton.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 14)
        forgottenPassButton.titleLabel?.attributedText = NSAttributedString(string: "Forgotten password?", attributes: [.underlineStyle: NSUnderlineStyle.single.rawValue])
        
    }
    
}
