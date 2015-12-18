//
//  MainViewController.swift
//  SampleCode
//
//  Created by Cuong Lam on 11/9/15.
//  Copyright © 2015 Cuong Lam. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let vcFeatured = StoryboardManager.sharedInstance.getInitialViewController(Storyboard.Featured) as! UINavigationController
        vcFeatured.tabBarItem.image = UIImage(named: "star")
        vcFeatured.tabBarItem.title = "Featured"
        
        let vcCategories = StoryboardManager.sharedInstance.getInitialViewController(Storyboard.Categories) as! UINavigationController
        vcCategories.tabBarItem.image = UIImage(named: "menu")
        vcCategories.tabBarItem.title = "Categories"
        
        let vcSearch = StoryboardManager.sharedInstance.getInitialViewController(Storyboard.Search) as! UINavigationController
        vcSearch.tabBarItem.image = UIImage(named: "search")
        vcSearch.tabBarItem.title = "Search"
        
        let vcWishlist = StoryboardManager.sharedInstance.getInitialViewController(Storyboard.Wishlist) as! UINavigationController
        vcWishlist.tabBarItem.image = UIImage(named: "heart")
        vcWishlist.tabBarItem.title = "Wishlist"
        
        let vcAccount = StoryboardManager.sharedInstance.getInitialViewController(Storyboard.Account) as! UINavigationController
        vcAccount.tabBarItem.image = UIImage(named: "account")
        vcAccount.tabBarItem.title = "Account"
        
        self.tabBar.tintColor = UIColor.hexColor("#4dd2cb", alpha: 1.0)
        
        self.viewControllers = [vcFeatured, vcCategories, vcSearch, vcWishlist, vcAccount];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
