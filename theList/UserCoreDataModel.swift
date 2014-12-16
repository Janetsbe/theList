//
//  UserCoreDataModel.swift
//  theList
//
//  Created by Joey Anetsberger on 12/15/14.
//  Copyright (c) 2014 Joey Anetsberger. All rights reserved.
//

import Foundation
import CoreData

class UserCoreDataModel : NSObject {
    
    var user : NSManagedObject!;
    
    override init(){
    
    }
    /*
        functions takes the information inputed by the user and pulled from Facebook
    */
    
    func initializeNewUser(firstName : String, lastName : String, age : Int, facebookID : String, gender : String, descrip : String){
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate;
        
        let manageContext = appDelegate.managedObjectContext!;
        
        let entity = NSEntityDescription.entityForName("User", inManagedObjectContext: manageContext);
        
        self.user = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: manageContext);
        
        self.user.setValue(firstName, forKey: "firstName")
        self.user.setValue(lastName, forKey: "lastName")
        self.user.setValue(age, forKey: "age")
        self.user.setValue(facebookID, forKey: "facebookID")
        self.user.setValue(gender, forKey: "gender")
        self.user.setValue(descrip, forKey: "descript")
        
        manageContext.save(nil)
        
    }
    

}