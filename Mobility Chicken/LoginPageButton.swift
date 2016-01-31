//
//  LoginPageButton.swift
//  Mobility Chicken
//
//  Created by Chelsea Green on 1/28/16.
//  Copyright © 2016 Mobility Chicken. All rights reserved.
//

import UIKit

class LoginPageButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        super.backgroundColor = UIColor.redColor()
        super.layer.cornerRadius = 5
        super.setTitleColor(UIColor.whiteColor(), forState: .Normal)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
