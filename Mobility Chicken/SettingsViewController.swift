//
//  SettingsViewController.swift
//  Mobility Chicken
//
//  Created by Chelsea Green on 1/30/16.
//  Copyright © 2016 Mobility Chicken. All rights reserved.
//

import UIKit

class SettingsViewController: NavViewController {
    
    var logoutButton = LoginPageButton(frame: CGRectMake(10, 100, (UIScreen.mainScreen().bounds.width)-20, 50))
    var accountLabel = UILabel(frame: CGRectMake(10, 300, (UIScreen.mainScreen().bounds.width)-20, 50))
    var usernameLabel = UILabel(frame: CGRectMake(10, 360, (UIScreen.mainScreen().bounds.width)-20, 40))
    var emailLabel = UILabel(frame: CGRectMake(10, 410, (UIScreen.mainScreen().bounds.width)-20, 40))
    var changePasswordButton = UIButton(frame: CGRectMake(10, 460, (UIScreen.mainScreen().bounds.width)-20, 40))
    var cancelAccountButton = UIButton(frame: CGRectMake(10, (UIScreen.mainScreen().bounds.height)-50, (UIScreen.mainScreen().bounds.width)-20, 40))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoutButton.addTarget(self, action: "logoutPressed", forControlEvents: UIControlEvents.TouchUpInside)
        logoutButton.setTitle("Sign Out", forState: .Normal)
        self.view.addSubview(logoutButton)
        
        accountLabel.textAlignment = NSTextAlignment.Center
        accountLabel.text = "ACCOUNT"
        accountLabel.font = UIFont(name: "HelveticaNeue", size: 30)
        self.view.addSubview(accountLabel)
        
        usernameLabel.textAlignment = NSTextAlignment.Center
        usernameLabel.text = "Username..."
        usernameLabel.font = UIFont(name: "HelveticaNeue-Light", size: 30)
        self.view.addSubview(usernameLabel)
        
        emailLabel.textAlignment = NSTextAlignment.Center
        emailLabel.text = "Email..."
        emailLabel.font = UIFont(name: "HelveticaNeue-Light", size: 30)
        self.view.addSubview(emailLabel)
        
        changePasswordButton.addTarget(self, action: "changePasswordPressed", forControlEvents: UIControlEvents.TouchUpInside)
        changePasswordButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        changePasswordButton.setTitle("Change Password", forState: .Normal)
        self.view.addSubview(changePasswordButton)
        
        cancelAccountButton.addTarget(self, action: "cancelAccountPressed", forControlEvents: UIControlEvents.TouchUpInside)
        cancelAccountButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        cancelAccountButton.setTitle("Cancel Account", forState: .Normal)
        self.view.addSubview(cancelAccountButton)

        }
    
    func logoutPressed() {
        //Cancels sessions and dismisses 2 VCs
    }
    
    func changePasswordPressed() {
        
    }
    
    func cancelAccountPressed() {
        
    }
    
    
  

}
