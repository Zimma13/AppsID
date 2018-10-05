//
//  MovieCollectionViewCell.swift
//  Test2MoviesScreen
//
//  Created by Zimma on 04/10/2018.
//  Copyright © 2018 Zimma. All rights reserved.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let posterImageView: UIImageView = {
        
        let image = UIImageView()
        image.layer.cornerRadius = 6
        image.layer.masksToBounds = true
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
        
    }()
    
    let movieName: UILabel = {
        
        let name = UILabel()
        name.font = GlobalFonts.nameMovieCell
        name.textColor = GlobalColors.text
        name.numberOfLines = 2
        name.text = "Привет, как дела? че там кого?"
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
        
    }()
    
    let movieYear: UILabel = {
        
        let year = UILabel()
        year.font = GlobalFonts.nameMovieCell
        year.textColor = GlobalColors.textLight
        year.text = "2018"
        year.translatesAutoresizingMaskIntoConstraints = false
        return year
        
    }()
    
    func setup() {
        
        addSubview(posterImageView)
        addSubview(movieName)
        addSubview(movieYear)
        
        //MARK: - Constraints cell items
        let views = ["poster": posterImageView, "nameLbl": movieName, "yearLbl": movieYear]
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-3-[poster]-3-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: views))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-3-[nameLbl]-3-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: views))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-3-[yearLbl]-3-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: views))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[poster(180)][nameLbl][yearLbl]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: views))
        
    }
}
