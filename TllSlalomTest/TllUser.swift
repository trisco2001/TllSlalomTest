//
//  TllUser.swift
//  TllSlalomTest
//
//  Created by Tristan Leonard on 7/17/15.
//  Copyright (c) 2015 Tristan Leonard. All rights reserved.
//

import Foundation
import SwiftyJSON

class User : TllSerializable{
    func initWithDictionary(dictionary:NSDictionary)->TllSerializable{
        let user = User()
        return user;
    }
    
    func dictionaryRepresentation()->NSDictionary{
        return NSDictionary()
    }
}