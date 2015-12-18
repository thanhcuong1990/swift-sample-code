//
//  BaseViewController.swift
//  SampleCode
//
//  Created by Cuong Lam on 11/9/15.
//  Copyright © 2015 Cuong Lam. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.configNavigation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configNavigation() {
        // background navigation
        let sImage = CGSize(width: ScreenSize.WIDTH, height: 1)
        let imgBackground = UIImage().tintWithColor(UIColor.hexColor("#4dd2cb", alpha: 1.0), size: sImage)
        self.navigationController?.navigationBar.backgroundColor = UIColor.hexColor("#4dd2cb", alpha: 1.0)
        
        self.navigationController?.navigationBar.setBackgroundImage(imgBackground, forBarMetrics: UIBarMetrics.Default)
        self.navigationController?.navigationBar.shadowImage = imgBackground
        
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.LightContent, animated: true)
        self.navigationController?.navigationBar.translucent = false
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
    }

}
