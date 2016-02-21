//
//  NavigationViewController.swift
//  Mobility Chicken
//
//  Created by Chelsea Green on 2/20/16.
//  Copyright © 2016 Mobility Chicken. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {

    var navController0 : LoginViewController?
    var navController00 : SignUpViewController?
    var navController1 : TabBarController?
    var navController2 : SettingsViewController?
    var navController3 : ResultsViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //creating object of TabViewController[1,2,3] class
        self.navController1 = TabBarController()
        self.navController2 = SettingsViewController()
        self.navController3 = ResultsViewController()
        //adding all three views to the TabBarView
        self.viewControllers = [navController1! , navController2! , navController3!]
    }
}
