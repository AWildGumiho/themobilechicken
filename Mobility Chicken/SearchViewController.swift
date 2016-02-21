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
    
    var searchButton = LoginPageButton(frame: CGRectMake(10, (UIScreen.mainScreen().bounds.height)-100 , (UIScreen.mainScreen().bounds.width)-20, 40))


    override func viewDidLoad() {
        super.viewDidLoad()
        
        backButton.hidden = true
        backButton.removeTarget(self, action: "cancelClicked", forControlEvents: UIControlEvents.TouchUpInside)
        backButton.addTarget(self, action: "backPressed", forControlEvents: UIControlEvents.TouchUpInside)

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
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
        searchButton.addTarget(self, action: "searchPressed", forControlEvents: UIControlEvents.TouchUpInside)
        searchButton.setTitle("Search", forState: .Normal)
        self.view.addSubview(searchButton)
    }
    
    
    //MARK: Actions
    func imagePressed() {
        anySearchKeyPressed()
    }
    
    func textPressed() {
        anySearchKeyPressed()
        
    }
    
    func exercisePressed() {
        anySearchKeyPressed()
        
    }
    
    func allPressed() {
        anySearchKeyPressed()
        
    }
    
    func backPressed() {
        imageButton.hidden = false
        textButton.hidden = false
        exerciseButton.hidden = false
        allButton.hidden = false
        backButton.hidden = true
        searchButton.hidden = true
    }
    
    func searchPressed() {
        presentViewController(ResultsViewController(), animated: true, completion: nil)
        searchButton.hidden = false
    }
    
    //MARK: helper functions 
    func anySearchKeyPressed() {
        imageButton.hidden = true
        textButton.hidden = true
        exerciseButton.hidden = true
        allButton.hidden = true
        backButton.hidden = false
        searchButton.hidden = false
        
    }

}
