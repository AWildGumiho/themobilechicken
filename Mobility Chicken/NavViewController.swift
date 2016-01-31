//
//  BaseViewController.swift
//  Mobility Chicken
//
//  Created by Chelsea Green on 1/30/16.
//  Copyright © 2016 Mobility Chicken. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
 
    var navBar = UINavigationBar(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, 65))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        
        navBar.backgroundColor = UIColor.whiteColor()
        let navItem = UINavigationItem()
        let cancelButton =  UIBarButtonItem(title: "Cancel", style:   UIBarButtonItemStyle.Plain, target: self, action: "cancelClicked")
        navItem.leftBarButtonItem = cancelButton
        navBar.items = [navItem]
        self.view.addSubview(navBar)
    }
    
    func cancelClicked() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
