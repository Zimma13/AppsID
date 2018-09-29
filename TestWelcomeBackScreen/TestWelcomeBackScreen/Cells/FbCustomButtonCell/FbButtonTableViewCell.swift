//
//  FbButtonTableViewCell.swift
//  TestWelcomeBackScreen
//
//  Created by Zimma on 28/09/2018.
//  Copyright © 2018 Zimma. All rights reserved.
//

import UIKit

class FbButtonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var fbButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.backgroundColor = Colors.bgColor
    }
    
}
