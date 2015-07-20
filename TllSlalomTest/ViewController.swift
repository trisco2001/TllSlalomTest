//
//  ViewController.swift
//  TllSlalomTest
//
//  Created by Tristan Leonard on 7/14/15.
//  Copyright (c) 2015 Tristan Leonard. All rights reserved.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var tableView:UITableView?
    var items = NSMutableArray()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let frame:CGRect = CGRect(x: 0, y: 100, width: self.view.frame.width, height: self.view.frame.height-100)
        self.tableView = UITableView(frame: frame)
        self.tableView?.dataSource = self
        self.tableView?.delegate = self
        self.view.addSubview(self.tableView!)
        
        let btn = UIButton(frame: CGRect(x: 0, y: 25, width: self.view.frame.width, height: 50))
        btn.backgroundColor = UIColor.grayColor()
        btn.setTitle("Add New User", forState: UIControlState.Normal)
        btn.addTarget(self, action: "addDummyData", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn)
    }
    
    func addDummyData(){
//        RestApiManager.sharedInstance.getRandomUser { (JSON) -> Void in
//            let results = JSON["results"]
//            for (index:String, subJson:JSON) in JSON{
//                let username: AnyObject = subJson["userName"]
//                let id: AnyObject = subJson["id"]
//                
//            }
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

