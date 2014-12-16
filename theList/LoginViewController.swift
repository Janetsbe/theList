//
//  ViewController.swift
//  theList
//
//  Created by Joey Anetsberger on 12/15/14.
//  Copyright (c) 2014 Joey Anetsberger. All rights reserved.
//

import UIKit;
import Foundation;
import CoreData;

class LoginViewController: UIViewController, FBLoginViewDelegate {
    // IBOutlets
    
    @IBOutlet var facebookLoginView: FBLoginView!;
    @IBOutlet var createProfileView: UIView!
    
    
    // flags
    var isDoneFetchedUser = false;
    var wasLoggedOut = true;
    
    
    // Core Data
    
    var user : NSManagedObject!;
    
    
    // placeholder data
    
    var fakeDescription : String = "This is a placeholder description.";
    var fakeInterests : [String] = ["1", "2", "3"];
    var fakeGender : String = "male"
    
    
    // local facebook variables
    var currentUser : FBGraphUser!;
    @IBOutlet var currentUserProfilePicView : FBProfilePictureView!;
    
    
    override func viewDidLoad() {
        println("123")
        super.viewDidLoad();
        
        
        
        self.facebookLoginView.delegate = self;
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func loginViewFetchedUserInfo(loginView: FBLoginView!, user: FBGraphUser!) {
        if(!isDoneFetchedUser) {
            currentUser = user;
            isDoneFetchedUser = true;
            println(user.objectID);
        }
    }
    
    func loginViewShowingLoggedInUser(loginView: FBLoginView!){
        println("you have logged in");
    }

    func loginViewShowingLoggedOutUser(loginView: FBLoginView!) {
        isDoneFetchedUser = false;
        println("you have not logged in");
    }
    
    
    @IBAction func createNewUserPressed(sender: AnyObject) {
        //UserCoreDataModel.initializeNewUser(firstName : String, lastName : String, age : Int, facebookID : String, gender : String, descrip : String);
        println(currentUser.first_name);
        //currentUserProfilePicView.profileID = currentUser.objectID;
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
        
        
        // Dispose of any resources that can be recreated.
    }


}

