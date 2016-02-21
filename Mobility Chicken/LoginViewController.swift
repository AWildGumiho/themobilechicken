//
//  LoginViewController.swift
//  Mobility Chicken
//
//  Created by Chelsea Green on 1/14/16.
//  Copyright © 2016 Mobility Chicken. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    var usernameTextField = LoginTextField(frame: CGRectMake(10, 300, (UIScreen.mainScreen().bounds.width)-20, 50))
    var passwordTextField = LoginTextField(frame: CGRectMake(10, 360, (UIScreen.mainScreen().bounds.width)-20, 50))
    var loginButton = LoginPageButton(frame: CGRectMake(10, 420, (UIScreen.mainScreen().bounds.width)-20, 50))
    var signupButton = UIButton(frame: CGRectMake(10, 480, (UIScreen.mainScreen().bounds.width)-20, 40))
    var facebookButton = LoginPageButton(frame: CGRectMake(10, (UIScreen.mainScreen().bounds.height)-100, (UIScreen.mainScreen().bounds.width)-20, 40))
    var forgotPasswordButton = UIButton(frame: CGRectMake(10, (UIScreen.mainScreen().bounds.height)-50 , (UIScreen.mainScreen().bounds.width)-20, 40))
    var welcomeText = UILabel(frame: CGRectMake(10, 100, (UIScreen.mainScreen().bounds.width)-20, 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let name=NSAttributedString(string: "Username", attributes:    [NSForegroundColorAttributeName : UIColor.grayColor().colorWithAlphaComponent(0.6)])
        usernameTextField.attributedPlaceholder=name
        usernameTextField.delegate = self
        self.view.addSubview(usernameTextField)
        
        let password=NSAttributedString(string: "Password", attributes:    [NSForegroundColorAttributeName : UIColor.grayColor().colorWithAlphaComponent(0.6)])
        passwordTextField.attributedPlaceholder=password
        passwordTextField.delegate = self
        self.view.addSubview(passwordTextField)
        
        loginButton.addTarget(self, action: "loginPressed", forControlEvents: UIControlEvents.TouchUpInside)
        loginButton.setTitle("Sign In", forState: .Normal)
        self.view.addSubview(loginButton)
        
        signupButton.addTarget(self, action: "signupPressed", forControlEvents: UIControlEvents.TouchUpInside)
        signupButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        signupButton.setTitle("Create New Account", forState: .Normal)
        self.view.addSubview(signupButton)
        
        facebookButton.addTarget(self, action: "facebookPressed", forControlEvents: UIControlEvents.TouchUpInside)
        facebookButton.setTitle("Sign in with Facebook", forState: .Normal)
        self.view.addSubview(facebookButton)
        
        forgotPasswordButton.addTarget(self, action: "forgotPasswordPressed", forControlEvents: UIControlEvents.TouchUpInside)
        forgotPasswordButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        forgotPasswordButton.setTitle("Forgot Password?", forState: .Normal)
        self.view.addSubview(forgotPasswordButton)
        
        welcomeText.textAlignment = NSTextAlignment.Center
        welcomeText.text = "The Mobile Chicken"
        welcomeText.font = UIFont(name: "HelveticaNeue-UltraLight", size: 40)
        self.view.addSubview(welcomeText)
    }
    
    
    //MARK: Actions
    func loginPressed() {
        let tabvc = TabBarController()
        self.presentViewController(tabvc, animated: true, completion: nil )

    }
    
    func signupPressed() {
        let svc = SignUpViewController()
        self.presentViewController(svc, animated: true, completion: nil)
    }
    
    func facebookPressed() {
        
    }

    func forgotPasswordPressed() {
        
    }
    
    //MARK: Text field delegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}