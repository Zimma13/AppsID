//
//  ViddeoTableViewController.swift
//  Test2MoviesScreen
//
//  Created by Zimma on 04/10/2018.
//  Copyright © 2018 Zimma. All rights reserved.
//

import UIKit
import Foundation

class VideoTableViewController: UITableViewController {
    
    private let cellId = "VideoTableViewCell"
    var company = [Company]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        
        view.backgroundColor = GlobalColors.bgColor
        navigationItem.title = "Видео"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(search(button:)))
        navigationItem.rightBarButtonItem?.tintColor = GlobalColors.button
        
        tableView.separatorColor = UIColor.clear
        tableView.register(VideoTableViewCell.self, forCellReuseIdentifier: cellId)
        print(company)
        
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return company.count
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! VideoTableViewCell
        cell.companyNameLable.text = company[indexPath.row].name
        cell.movies = company[indexPath.row].movies
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 280
    }
    
    @objc func search(button: UIButton) {
        
        print("Исчуууу!")
        
    }
    
    func loadData() {
        
        let path = Bundle.main.path(forResource: "MovieJSON", ofType: "json")
        let url = URL(fileURLWithPath: path!)
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data else { return }
            guard error == nil else { return }
            
            do {
                
                let json = try JSONDecoder().decode([Company].self, from: data)
                DispatchQueue.main.async {
                    self.company = json
                    self.tableView.reloadData()
                }
                
            } catch {
                
                print(error)
                
            }
            
        }.resume()

    }
}
