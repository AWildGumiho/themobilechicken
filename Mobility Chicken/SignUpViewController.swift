//
//  SignUpViewController.swift
//  Mobility Chicken
//
//  Created by Chelsea Green on 1/29/16.
//  Copyright © 2016 Mobility Chicken. All rights reserved.
//

import UIKit

class SignUpViewController: NavViewController, UITextFieldDelegate {
    
    var emailTextField = LoginTextField(frame: CGRectMake(10, 240, (UIScreen.mainScreen().bounds.width)-20, 50))
    var usernameTextField = LoginTextField(frame: CGRectMake(10, 300, (UIScreen.mainScreen().bounds.width)-20, 50))
    var passwordTextField = LoginTextField(frame: CGRectMake(10, 360, (UIScreen.mainScreen().bounds.width)-20, 50))
    var createAccountButton = LoginPageButton(frame: CGRectMake(10, 420, (UIScreen.mainScreen().bounds.width)-20, 50))

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        
        toolBar.hidden = true
        
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
        //TODO: Present an alert. Failure "ok" presents SVC again, Success "ok" dismisses SVC (shows LVC)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    //MARK: Text field delegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    

}
