//
//  UserCoreDataModel.swift
//  theList
//
//  Created by Joey Anetsberger on 12/15/14.
//  Copyright (c) 2014 Joey Anetsberger. All rights reserved.
//

import Foundation
import CoreData

class User: NSObject {
    var firstName : String = "";
    var lastName : String = "";
    var descript : String = "";
    var age : Int = 0;
    var gender : String = "";
    var interests : [String] = [];
    
    
    
    init(userCoreDataRecord : NSManagedObject){
        super.init()
        
        
    }
    
    


}
