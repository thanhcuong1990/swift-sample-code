//
//  BEStoryboardManager.swift
//  BE Radio
//
//  Created by Cuong Lam on 01/12/14.
//  Copyright (c) 2014 BE Studio. All rights reserved.
//

import Foundation
import UIKit


class StoryboardManager {
    
    class var sharedInstance : StoryboardManager {
        struct Static {
            static var onceToken : dispatch_once_t = 0
            static var instance : StoryboardManager? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = StoryboardManager()
        }
        return Static.instance!
    }
    
    func getViewController(viewControllerID: String, storyboard:String) ->UIViewController{
        let sb = UIStoryboard(name: storyboard, bundle: nil)
        return sb.instantiateViewControllerWithIdentifier(viewControllerID) 
    }
    
    func getInitialViewController(storyboard:String) ->UIViewController {
        let mainView = UIStoryboard(name:storyboard, bundle: nil)
        return mainView.instantiateInitialViewController()!
    }
}