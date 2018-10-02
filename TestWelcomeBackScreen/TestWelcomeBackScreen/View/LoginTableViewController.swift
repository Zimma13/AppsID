//
//  LoginTableViewController.swift
//  TestWelcomeBackScreen
//
//  Created by Zimma on 28/09/2018.
//  Copyright © 2018 Zimma. All rights reserved.
//

import UIKit

class LoginTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = Colors.bgColor
        tableView.separatorColor = UIColor.clear
        
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.barTintColor = Colors.bgColor
        
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            
            let cell = Bundle.main.loadNibNamed("LablesTableViewCell", owner: self, options: nil)?.first as! LablesTableViewCell
            cell.lableChenge(lbl: .welcomeLbl)
            return cell
            
        } else if indexPath.row == 1 {
            
            let cell = Bundle.main.loadNibNamed("FbButtonTableViewCell", owner: self, options: nil)?.first as! FbButtonTableViewCell
            return cell
            
        } else if indexPath.row == 2 {
            
            let cell = Bundle.main.loadNibNamed("LablesTableViewCell", owner: self, options: nil)?.first as! LablesTableViewCell
            cell.lableChenge(lbl: .orLbl)
            return cell
            
        } else if indexPath.row == 3 {
            
            let cell = Bundle.main.loadNibNamed("TextFieldTableViewCell", owner: self, options: nil)?.first as! TextFieldTableViewCell
            cell.textFieldChenge(textFieldParam: .email)
            cell.textFieldChenged = { text in
                print(text)
            }
            return cell
            
        } else if indexPath.row == 4 {
            
            let cell = Bundle.main.loadNibNamed("TextFieldTableViewCell", owner: self, options: nil)?.first as! TextFieldTableViewCell
            cell.textFieldChenge(textFieldParam: .pass)
            cell.textFieldChenged = { text in
                print(text)
            }
            return cell
            
        } else {
            
            let cell = Bundle.main.loadNibNamed("ForgottenPassTableViewCell", owner: self, options: nil)?.first as! ForgottenPassTableViewCell
            return cell
            
        }
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if touches.first != nil {
            
            view.endEditing(true)
            
        }
        
        super.touchesBegan(touches, with: event)
    }
    
}
