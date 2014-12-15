//
//  ViewController.swift
//  theList
//
//  Created by Joey Anetsberger on 12/15/14.
//  Copyright (c) 2014 Joey Anetsberger. All rights reserved.
//

import UIKit;
import Foundation;

class LoginViewController: UIViewController, FBLoginViewDelegate {
    // IBOutlets
    
    @IBOutlet var facebookLoginView: FBLoginView!;

    @IBOutlet var createProfileView: UIView!
    
    
    // flags
    var isDoneFetchedUser = false;
    var wasLoggedOut = true;
    
    
    // Inf
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.facebookLoginView.delegate = self;
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func loginViewFetchedUserInfo(loginView: FBLoginView!, user: FBGraphUser!) {
        if(!isDoneFetchedUser) {
            isDoneFetchedUser = true;
//            createProfileView.hidden = false;
            println(user.objectID);
        }
    }
    
    func loginViewShowingLoggedInUser(loginView: FBLoginView!) {
//
    }

    func loginViewShowingLoggedOutUser(loginView: FBLoginView!) {
        isDoneFetchedUser = false;
    }
    
    
    @IBAction func createProfileButtonPressed(sender: AnyObject) {
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
        
        
        // Dispose of any resources that can be recreated.
    }


}

