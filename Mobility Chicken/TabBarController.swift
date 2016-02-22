//
//  TabBarController.swift
//  Mobility Chicken
//
//  Created by Chelsea Green on 2/20/16.
//  Copyright © 2016 Mobility Chicken. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    var tabViewController1 : HomeViewController?
    var tabViewController2 : SavedRoutinesViewController?
    var tabViewController3 : SearchViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //creating object of TabViewController[1,2,3] class
        self.tabViewController1 = HomeViewController()
        self.tabViewController2 = SavedRoutinesViewController()
        self.tabViewController3 = SearchViewController()
        //adding all three views to the TabBarView
        self.viewControllers = [tabViewController1! , tabViewController2! , tabViewController3!]
        //defining the items of the TabBar corresponding to three views
        let home = UITabBarItem(title: "Home", image: nil, tag: 0)
        let saved = UITabBarItem(title: "Saved", image: nil, tag: 1)
        let search = UITabBarItem(title: "Search", image: nil, tag: 2)
        //setting TabBarItems corresponding to each view in TabBarController
        tabViewController1?.tabBarItem = home
        tabViewController2?.tabBarItem = saved
        tabViewController3?.tabBarItem = search

    }
}