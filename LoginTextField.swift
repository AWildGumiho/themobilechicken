//
//  LoginTextField.swift
//  Mobility Chicken
//
//  Created by Chelsea Green on 1/29/16.
//  Copyright © 2016 Mobility Chicken. All rights reserved.
//

import UIKit

class LoginTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        super.backgroundColor = UIColor.grayColor().colorWithAlphaComponent(0.2)
        super.textColor=UIColor.grayColor()
        super.layer.cornerRadius = 5
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }



}
