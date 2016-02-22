//
//  DataService.swift
//  Mobility Chicken
//
//  Created by Chelsea Green on 2/21/16.
//  Copyright © 2016 Mobility Chicken. All rights reserved.
//

import Foundation
import Firebase

class DataService {
    static let dataService = DataService()
    
    private var _BASE_REF = Firebase(url: "\(BASE_URL)")
    private var _USER_REF = Firebase(url: "\(BASE_URL)/users")
    private var _EXERCISE_REF = Firebase(url: "\(BASE_URL)/exercises")
    
    var BASE_REF: Firebase {
        return _BASE_REF
    }
    
    var USER_REF: Firebase {
        return _USER_REF
    }
    
    var CURRENT_USER_REF: Firebase {
        let userID = NSUserDefaults.standardUserDefaults().valueForKey("uid") as! String
        
        let currentUser = Firebase(url: "\(BASE_REF)").childByAppendingPath("users").childByAppendingPath(userID)
        
        return currentUser!
    }
    
    var EXERCISE_REF: Firebase {
        return _EXERCISE_REF
    }
    
    func createNewAccount(uid: String, user: Dictionary<String, String>) {
        // A User is born.
        USER_REF.childByAppendingPath(uid).setValue(user)
    }
}