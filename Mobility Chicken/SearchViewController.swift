//
//  SearchViewController.swift
//  Mobility Chicken
//
//  Created by Chelsea Green on 1/29/16.
//  Copyright © 2016 Mobility Chicken. All rights reserved.
//

import UIKit

class SearchViewController: NavViewController {
    
    //var searchLabel = UILabel
    var imageButton = LoginPageButton(frame: CGRectMake(75, 200, 120, 120))
    var textButton = LoginPageButton(frame: CGRectMake((UIScreen.mainScreen().bounds.width)-195, 200, 120, 120))
    var exerciseButton = LoginPageButton(frame: CGRectMake(75, 340, 120, 120))
    var allButton = LoginPageButton(frame: CGRectMake((UIScreen.mainScreen().bounds.width)-195, 340, 120, 120))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        backButton.hidden = true

        imageButton.addTarget(self, action: "imagePressed", forControlEvents: UIControlEvents.TouchUpInside)
        imageButton.setTitle("Basic", forState: .Normal)
        self.view.addSubview(imageButton)
        
        textButton.addTarget(self, action: "textPressed", forControlEvents: UIControlEvents.TouchUpInside)
        textButton.setTitle("Text", forState: .Normal)
        self.view.addSubview(textButton)
        
        exerciseButton.addTarget(self, action: "exercisePressed", forControlEvents: UIControlEvents.TouchUpInside)
        exerciseButton.setTitle("Exercise", forState: .Normal)
        self.view.addSubview(exerciseButton)
        
        allButton.addTarget(self, action: "allPressed", forControlEvents: UIControlEvents.TouchUpInside)
        allButton.setTitle("All", forState: .Normal)
        self.view.addSubview(allButton)
        
    }
    
    func imagePressed() {
    
    }
    
    func textPressed() {
        
    }
    
    func exercisePressed() {
        
    }
    
    func allPressed() {
        
    }

    

}
