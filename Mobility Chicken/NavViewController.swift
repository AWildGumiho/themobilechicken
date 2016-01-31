//
//  NavViewController.swift
//  Mobility Chicken
//
//  Created by Chelsea Green on 1/30/16.
//  Copyright © 2016 Mobility Chicken. All rights reserved.
//

import UIKit

class NavViewController: UIViewController {
 
    var navBar = UINavigationBar(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, 65))
    var toolBar = UIToolbar(frame: CGRectMake(0, (UIScreen.mainScreen().bounds.height)-65, UIScreen.mainScreen().bounds.width, 65))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        
        let backButton: UIButton = UIButton(type: UIButtonType.Custom)
        backButton.setImage(UIImage(named: "back.png"), forState: UIControlState.Normal)
        //TODO: configure icon to varying device sizes
        backButton.addTarget(self, action: "cancelClicked", forControlEvents: UIControlEvents.TouchUpInside)
        backButton.frame = CGRectMake(0, 0, 30, 30)
        let barButton = UIBarButtonItem(customView: backButton)
        let navItem = UINavigationItem()
        navItem.leftBarButtonItem = barButton
        navBar.backgroundColor = UIColor.whiteColor()
        navBar.tintColor = UIColor.blackColor()
        navBar.items = [navItem]
        self.view.addSubview(navBar)
        
        toolBar.backgroundColor = UIColor.greenColor()
        self.view.addSubview(toolBar)
    }
    
    //MARK: Actions
    func cancelClicked() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
    
    
    

}
