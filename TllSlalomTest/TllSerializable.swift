//
//  TllSerializable.swift
//  TllSlalomTest
//
//  Created by Tristan Leonard on 7/17/15.
//  Copyright (c) 2015 Tristan Leonard. All rights reserved.
//

import Foundation

protocol TllSerializable {
    func initWithDictionary(dictionary:NSDictionary)->TllSerializable
    
    func dictionaryRepresentation()->NSDictionary 
}