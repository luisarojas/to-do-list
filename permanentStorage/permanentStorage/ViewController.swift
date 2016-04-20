//
//  ViewController.swift
//  permanentStorage
//
//  Created by Luisa Rojas on 2016-04-20.
//  Copyright © 2016 lrg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Specific data for that user. Name, user id, etc. can use it to store any data we like
        // NSUserDefaults.standardUserDefaults().setObject("Luisa", forKey: "name")
        
        // retrieves the data
        // since its an object, need to define what kind it is if we want to use it for other than printing to the logs
        var name = NSUserDefaults.standardUserDefaults().objectForKey("name") as! String
        print(name)
        
        var arr = [1, 2, 3]
        
        // NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        var recalledArray = NSUserDefaults.standardUserDefaults().objectForKey("array") as! NSArray
        
        print(recalledArray[2])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

