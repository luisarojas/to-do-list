//
//  FirstViewController.swift
//  toDoList
//
//  Created by Luisa Rojas on 2016-04-20.
//  Copyright © 2016 lrg. All rights reserved.
//

import UIKit

// will make it available to the second view controller as well
// define empty array
var toDoList = [String]()

class FirstViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet var toDoListTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // sync toDoList array with the contents of NSUserDefaults
        // will restore the data when the user opens the app
        if NSUserDefaults.standardUserDefaults().objectForKey("toDoList") != nil {
            // need to specify itll be an array of strings
            toDoList = NSUserDefaults.standardUserDefaults().objectForKey("toDoList") as! [String]
        } else {
            // nothing has been saved in the to do list
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return toDoList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = toDoList[indexPath.row]
        
        return cell
    }
    
    // update values in the table every time this view appears, not just when the app is loaded
    override func viewDidAppear(animated: Bool) {
        toDoListTable.reloadData()
    }
    
    // called when the user tries to "edit" (delete) an item in the table
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath:NSIndexPath) {
        
        //check for a swipe to the left using editing style
        if editingStyle == UITableViewCellEditingStyle.Delete {
            toDoList.removeAtIndex(indexPath.row)
            
            NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
            
            // effectively remove the row from the actual table
            toDoListTable.reloadData()
        }
    }
}