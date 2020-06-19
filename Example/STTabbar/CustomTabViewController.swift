//
//  CustomTabViewController.swift
//  STTabbar_Example
//
//  Created by Shraddha Sojitra on 19/06/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import STTabbar

class CustomTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let myTabbar = tabBar as? STTabbar {
            myTabbar.centerButtonActionHandler = {
                print("Center Button Tapped")
            }
        }
    }
}
