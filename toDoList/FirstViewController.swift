//
//  FirstViewController.swift
//  toDoList
//
//  Created by Luisa Rojas on 2016-04-20.
//  Copyright © 2016 lrg. All rights reserved.
//

import UIKit

var toDoList = [String]()

class FirstViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet var toDoListTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if UserDefaults.standard.object(forKey: "toDoList") != nil {
            toDoList = UserDefaults.standard.object(forKey: "toDoList") as! [String]
        } else {

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        cell.textLabel?.text = toDoList[(indexPath as NSIndexPath).row]
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        toDoListTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath:IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete {
            toDoList.remove(at: (indexPath as NSIndexPath).row)
            UserDefaults.standard.set(toDoList, forKey: "toDoList")
            toDoListTable.reloadData()
        }
    }
}
