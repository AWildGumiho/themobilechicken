//
//  ViewController.swift
//  Mobility Chicken
//
//  Created by Chelsea Green on 1/14/16.
//  Copyright © 2016 Mobility Chicken. All rights reserved.
//


import UIKit

class LoginViewController: UIViewController {
    
    var usernameTextField = UITextField(frame: CGRectMake(10, 80, (UIScreen.mainScreen().bounds.width)-20, 80))
    var passwordTextField = UITextField(frame: CGRectMake(10, 80, (UIScreen.mainScreen().bounds.width)-20, 170))
    var loginButton = UIButton(frame: CGRectMake(10, 80, (UIScreen.mainScreen().bounds.width)-20, 260))
    var signupButton = UIButton(frame: CGRectMake(10, 80, (UIScreen.mainScreen().bounds.width)-20, 360))
    var facebookButton = UIButton(frame: CGRectMake(10, 80, (UIScreen.mainScreen().bounds.width)-20, 460))
    var forgotPasswordButton = UIButton(frame: CGRectMake(10, 80, (UIScreen.mainScreen().bounds.width)-20, 560))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameTextField.backgroundColor = UIColor.blueColor()
        self.view.addSubview(usernameTextField)
        
        passwordTextField.backgroundColor = UIColor.greenColor()
        self.view.addSubview(passwordTextField)
        
        loginButton.backgroundColor = UIColor.brownColor()
        self.view.addSubview(loginButton)
        
        signupButton.backgroundColor = UIColor.redColor()
        self.view.addSubview(signupButton)
        
        facebookButton.backgroundColor = UIColor.orangeColor()
        self.view.addSubview(facebookButton)
        
        forgotPasswordButton.backgroundColor = UIColor.grayColor()
        self.view.addSubview(forgotPasswordButton)
    }
    
}

