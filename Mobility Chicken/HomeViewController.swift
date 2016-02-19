//
//  HomeViewController.swift
//  Mobility Chicken
//
//  Created by Chelsea Green on 1/29/16.
//  Copyright © 2016 Mobility Chicken. All rights reserved.
//

import UIKit

class HomeViewController: NavViewController {
    
    var searchButton = LoginPageButton(frame: CGRectMake(100, 340, (UIScreen.mainScreen().bounds.width)-200, 150))
    var savedRoutinesButton = LoginPageButton(frame: CGRectMake(100, 510, (UIScreen.mainScreen().bounds.width)-200, 150))
    var faqButton = UIButton()
    var aboutButton = UIButton()
    var contactButton = UIButton()
    var topText = UILabel(frame: CGRectMake(10, 100, (UIScreen.mainScreen().bounds.width)-20, 50))

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        let settingsButton: UIButton = UIButton(type: UIButtonType.Custom)
        settingsButton.setImage(UIImage(named: "settings-256.png"), forState: UIControlState.Normal)
        //TODO: configure icon to varying device sizes
        settingsButton.addTarget(self, action: "settingsPressed", forControlEvents: UIControlEvents.TouchUpInside)
        settingsButton.frame = CGRectMake(0, 0, 30, 30)
        let barButton = UIBarButtonItem(customView: settingsButton)
        let navItem = UINavigationItem()
        navItem.rightBarButtonItem = barButton
        navBar.backgroundColor = UIColor.whiteColor()
        navBar.tintColor = UIColor.blackColor()
        navBar.items = [navItem]
    
        searchButton.setTitle("Search", forState: .Normal)
        searchButton.addTarget(self, action: "searchButtonPressed", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(searchButton)
        
        savedRoutinesButton.setTitle("View Saved", forState: .Normal)
        savedRoutinesButton.addTarget(self, action: "savedRoutinesButtonPressed", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(savedRoutinesButton)
        
        topText.textAlignment = NSTextAlignment.Center
        topText.text = "Welcome Mobile Chicken"
        topText.font = UIFont(name: "HelveticaNeue-UltraLight", size: 30)
        self.view.addSubview(topText)
        
        self.title = "item1"
    }
    
    func searchButtonPressed() {
        self.presentViewController(SearchViewController(), animated: true, completion: nil)
    }

    func savedRoutinesButtonPressed() {
        self.presentViewController(SavedRoutinesViewController(), animated: true, completion: nil)
    }
    
    func settingsPressed() {
        self.presentViewController(SettingsViewController(), animated: true, completion: nil)
    }
    
    func faqPressed() {
        
    }
    
    func aboutPressed() {
        
    }
    
    func contactPressed() {
        
    }
    
    
}