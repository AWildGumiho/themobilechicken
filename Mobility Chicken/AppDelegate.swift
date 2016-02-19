//
//  AppDelegate.swift
//  Mobility Chicken
//
//  Created by Chelsea Green on 1/14/16.
//  Copyright © 2016 Mobility Chicken. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var tabViewController1 : HomeViewController?
    var tabViewController2 : SavedRoutinesViewController?
    var tabViewController3 : SearchViewController?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        //setting the initial screen bounds of the view
        self.tabViewController1 = HomeViewController()
        self.tabViewController2 = SavedRoutinesViewController()
        self.tabViewController3 = SearchViewController()
        //creating object of TabViewController[1,2,3] class
        var tabBarController = UITabBarController()
        //creating object of UITabBarController class
        tabBarController.viewControllers = [tabViewController1! , tabViewController2! , tabViewController3!]
        //adding all three views to the TabBarView
        var item1 = UITabBarItem(title: "1st", image: nil, tag: 0)
        var item2 = UITabBarItem(title: "2nd", image: nil, tag: 1)
        var item3 = UITabBarItem(title: "3rd", image: nil, tag: 2)
        //defining the items of the TabBar corresponding to three views
        tabViewController1?.tabBarItem = item1
        tabViewController2?.tabBarItem = item2
        tabViewController3?.tabBarItem = item3
        //setting TabBarItems corresponding to each view in TabBarController
        
        self.window?.rootViewController = tabBarController
        //setting the initial VieController as tabBarController
        
        window?.makeKeyAndVisible()
      
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

