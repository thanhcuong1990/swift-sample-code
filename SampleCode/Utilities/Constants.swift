//
//  Constants.swift
//  SampleCode
//
//  Created by Cuong Lam on 11/9/15.
//  Copyright © 2015 Cuong Lam. All rights reserved.
//

import Foundation
import UIKit

// MARK: Storyboard
struct Storyboard {
    static let Featured     = "Featured"
    static let Categories   = "Categories"
    static let Search       = "Search"
    static let Wishlist     = "Wishlist"
    static let Account      = "Account"
    static let Checkout     = "Checkout"
    static let Product      = "Product"
}

struct ScreenSize {
    static let WIDTH      = UIScreen.mainScreen().bounds.size.width
    static let HEIGHT     = UIScreen.mainScreen().bounds.size.height
    static let MAX_LENGTH = max(ScreenSize.WIDTH, ScreenSize.HEIGHT)
    static let MIN_LENGTH = min(ScreenSize.WIDTH, ScreenSize.HEIGHT)
}

struct Url {
    static let images = "https://api.flickr.com/services/rest/"
}
