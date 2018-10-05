//
//  ViewController.swift
//  Test2MoviesScreen
//
//  Created by Zimma on 04/10/2018.
//  Copyright © 2018 Zimma. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
        
    }

    func setupTabBar() {
        
        let tvTableVC = createNavController(vc: TvTableViewController(), image: "tvTabBarIco", title: "ТВ")
        let videoTableVC = createNavController(vc: VideoTableViewController(), image: "videoTabBarIco", title: "Видео")
        let subscriptionsCollectionVC = createNavController(vc: SubscriptionsTableViewController(), image: "subscribeTabBarIco", title: "Подписки")
        let favoritesVC = createNavController(vc: FavoritesViewController(), image: "myTabBarIcon", title: "Мое")
        let settingsVC = createNavController(vc: SettingsViewController(), image: "settingsTabBarIco", title: "Настройки")
        
        viewControllers = [tvTableVC, videoTableVC, subscriptionsCollectionVC, favoritesVC, settingsVC]
        
        tabBar.barTintColor = GlobalColors.tabNavBarBg
        tabBar.tintColor = GlobalColors.button
        tabBar.isTranslucent = false
        tabBar.unselectedItemTintColor = GlobalColors.tabBarIconLight
        selectedViewController = viewControllers?[1]
        
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
        let index = self.tabBar.items?.index(of: item)
        let subView = tabBar.subviews[index!+1].subviews.first as! UIImageView
        self.performSpringAnimation(imgView: subView)
        
    }
    
    //func to perform spring animation on imageview
    func performSpringAnimation(imgView: UIImageView) {
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
            
            imgView.transform = CGAffineTransform.init(scaleX: 1.4, y: 1.4)
            
            //reducing the size
            UIView.animate(withDuration: 0.5, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
                imgView.transform = CGAffineTransform.init(scaleX: 1, y: 1)
            }) { (flag) in
            }
        }) { (flag) in
            
        }
    }
    
}

extension UITabBarController {
    
    func createNavController(vc: UIViewController, image: String, title: String) -> UINavigationController {
        
        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem.image = UIImage(named: image)
        navController.tabBarItem.title = title
        return navController
        
    }
    
}

