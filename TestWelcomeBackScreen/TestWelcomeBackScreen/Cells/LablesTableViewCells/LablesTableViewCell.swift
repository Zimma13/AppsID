//
//  LablesTableViewCell.swift
//  TestWelcomeBackScreen
//
//  Created by Zimma on 28/09/2018.
//  Copyright © 2018 Zimma. All rights reserved.
//

import UIKit

class LablesTableViewCell: UITableViewCell {

    @IBOutlet weak var lable: UILabel!
    
    enum lables: String {
        case welcomeLbl = "Welcome Back!"
        case orLbl = "--- OR ---"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.backgroundColor = Colors.bgColor
    }
    
    func lableChenge(lbl: lables) {
        lable.text = lbl.rawValue
        lable.textColor = lbl == .welcomeLbl ? Colors.textColor : Colors.textColorLight
        lable.font = lbl == .welcomeLbl ? UIFont(name: "AvenirNext-Bold", size: 28) : UIFont(name: "AvenirNext", size: 14)
    }
}
