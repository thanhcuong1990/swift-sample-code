//
//  SearchViewController.swift
//  SampleCode
//
//  Created by Cuong Lam on 11/9/15.
//  Copyright © 2015 Cuong Lam. All rights reserved.
//

import UIKit

class SearchViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = "Search"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }

}
