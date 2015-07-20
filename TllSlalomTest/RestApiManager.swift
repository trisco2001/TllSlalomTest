//
//  RestApiManager.swift
//  TllSlalomTest
//
//  Created by Tristan Leonard on 7/17/15.
//  Copyright (c) 2015 Tristan Leonard. All rights reserved.
//

import Foundation

typealias ServiceResponse = (JSON, NSError?)->Void

class RestApiManager {
    static let sharedInstance = RestApiManager()
    
    let baseUrl = "http://192.168.40.107:9002/api/users"
    
    func getRandomUser(onCompletion:(JSON)->Void){
        makeHttpGetRequest(baseUrl, onCompletion: { json, err-> Void in
            onCompletion(json)
        })
    }
    
    func makeHttpGetRequest(path:String, onCompletion:ServiceResponse){
        let request = NSMutableURLRequest(URL: NSURL(string: path)!)
        
        let session = NSURLSession.sharedSession()
        
        let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error in
            let json:JSON = JSON(data)
            onCompletion(json, error)
        })
        
        task.resume()
        
    }
}