//
//  LoginViewController.swift
//  Mobility Chicken
//
//  Created by Chelsea Green on 1/14/16.
//  Copyright © 2016 Mobility Chicken. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: BaseViewController {
    
    var emailTextField = LoginTextField(frame: CGRectMake(10, 300, (UIScreen.mainScreen().bounds.width)-20, 50))
    var passwordTextField = LoginTextField(frame: CGRectMake(10, 360, (UIScreen.mainScreen().bounds.width)-20, 50))
    var loginButton = LoginPageButton(frame: CGRectMake(10, 420, (UIScreen.mainScreen().bounds.width)-20, 50))
    var signupButton = UIButton(frame: CGRectMake(10, 480, (UIScreen.mainScreen().bounds.width)-20, 40))
    var facebookButton = LoginPageButton(frame: CGRectMake(10, (UIScreen.mainScreen().bounds.height)-100, (UIScreen.mainScreen().bounds.width)-20, 40))
    var forgotPasswordButton = UIButton(frame: CGRectMake(10, (UIScreen.mainScreen().bounds.height)-50 , (UIScreen.mainScreen().bounds.width)-20, 40))
    var welcomeText = UILabel(frame: CGRectMake(10, 100, (UIScreen.mainScreen().bounds.width)-20, 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navBar.hidden = true
        
        let name=NSAttributedString(string: "Email", attributes:    [NSForegroundColorAttributeName : UIColor.grayColor().colorWithAlphaComponent(0.6)])
        emailTextField.attributedPlaceholder=name
        emailTextField.delegate = self
        self.view.addSubview(emailTextField)
        
        let password=NSAttributedString(string: "Password", attributes:    [NSForegroundColorAttributeName : UIColor.grayColor().colorWithAlphaComponent(0.6)])
        passwordTextField.attributedPlaceholder=password
        passwordTextField.secureTextEntry = true
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
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        //If the uid is stored, the user is logged in already.
        if NSUserDefaults.standardUserDefaults().valueForKey("uid") != nil && DataService.dataService.CURRENT_USER_REF.authData != nil {
            self.presentViewController(TabBarController(), animated: true, completion: nil)
        }
    }
    
    //MARK: Actions
    func loginPressed() {
        let email = emailTextField.text
        let password = passwordTextField.text
        
        if email != "" && password != "" {
            //Login with the Firebase authUser method
            DataService.dataService.BASE_REF.authUser(email, password: password, withCompletionBlock: { error, authData in
                
                if error != nil {
                    print(error)
                    self.loginErrorAlert("Oops!", message: "Check your username and password.")
                } else {
                    
                    //Be sure the correct uid is stored.
                    NSUserDefaults.standardUserDefaults().setValue(authData.uid, forKey: "uid")
                    
                    //Enter the app
                    self.presentViewController(TabBarController(), animated: true, completion: nil)
                }
            })
            
        } else {
            
            // There was a problem
            loginErrorAlert("Oops!", message: "Don't forget to enter your email and password.")
        }
    }
    
    func signupPressed() {
        self.presentViewController(SignUpViewController(), animated: true, completion: nil)
    }
    
    func facebookPressed() {
        
    }

    func forgotPasswordPressed() {
        
    }
    
    func loginErrorAlert(title: String, message: String) {
        
        // Called upon login error to let the user know login didn't work.
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        let action = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }
}