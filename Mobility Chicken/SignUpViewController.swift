//
//  SignUpViewController.swift
//  Mobility Chicken
//
//  Created by Chelsea Green on 1/29/16.
//  Copyright © 2016 Mobility Chicken. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: NavViewController, UITextFieldDelegate {
    
    var emailTextField = LoginTextField(frame: CGRectMake(10, 240, (UIScreen.mainScreen().bounds.width)-20, 50))
    var usernameTextField = LoginTextField(frame: CGRectMake(10, 300, (UIScreen.mainScreen().bounds.width)-20, 50))
    var passwordTextField = LoginTextField(frame: CGRectMake(10, 360, (UIScreen.mainScreen().bounds.width)-20, 50))
    var createAccountButton = LoginPageButton(frame: CGRectMake(10, 420, (UIScreen.mainScreen().bounds.width)-20, 50))

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        
        let email=NSAttributedString(string: "Email", attributes:    [NSForegroundColorAttributeName : UIColor.grayColor().colorWithAlphaComponent(0.6)])
        emailTextField.attributedPlaceholder=email
        emailTextField.delegate = self
        self.view.addSubview(emailTextField)
        
        let username=NSAttributedString(string: "Username", attributes:    [NSForegroundColorAttributeName : UIColor.grayColor().colorWithAlphaComponent(0.6)])
        usernameTextField.attributedPlaceholder=username
        usernameTextField.delegate = self
        self.view.addSubview(usernameTextField)
        
        let password=NSAttributedString(string: "Password", attributes:    [NSForegroundColorAttributeName : UIColor.grayColor().colorWithAlphaComponent(0.6)])
        passwordTextField.attributedPlaceholder=password
        passwordTextField.delegate = self
        self.view.addSubview(passwordTextField)
        
        createAccountButton.addTarget(self, action: "submitPressed", forControlEvents: UIControlEvents.TouchUpInside)
        createAccountButton.setTitle("Submit", forState: .Normal)
        self.view.addSubview(createAccountButton)
    }
    
    //MARK: Actions
    func submitPressed() {
        let username = usernameTextField.text
        let email = emailTextField.text
        let password = passwordTextField.text
        if username != "" && email != "" && password != "" {
            // Set Email and Password for the New User.
            DataService.dataService.BASE_REF.createUser(email, password: password, withValueCompletionBlock: { error, result in
                
                if error != nil {
                    
                    // There was a problem.
                    self.signupErrorAlert("Oops!", message: "Having some trouble creating your account. Try again.")
                    
                } else {
                    
                    // Create and Login the New User with authUser
                    DataService.dataService.BASE_REF.authUser(email, password: password, withCompletionBlock: {
                        err, authData in
                        
                        let user = ["provider": authData.provider!, "email": email!, "username": username!]
                        
                        // Seal the deal in DataService.swift.
                        DataService.dataService.createNewAccount(authData.uid, user: user)
                    })
                    
                    // Store the uid for future access.
                    NSUserDefaults.standardUserDefaults().setValue(result ["uid"], forKey: "uid")
                    
                    // Enter the app.
                    self.presentViewController(TabBarController(), animated: true, completion: nil)
                }
            })
            
        } else {
            signupErrorAlert("Oops!", message: "Don't forget to enter your email, password, and a username.")
        }
        
    }
    
    func signupErrorAlert(title: String, message: String) {
        
        // Called upon signup error to let the user know signup didn't work.
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        let action = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }
    
    //MARK: Text field delegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
