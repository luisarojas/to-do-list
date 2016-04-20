//
//  ViewController.swift
//  tableViews
//
//  Created by Luisa Rojas on 2016-04-20.
//  Copyright © 2016 lrg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate { //makes the view controller responsible for the table thats just been added to it
    
    //array to store the table view content
    var cellContent = ["Luis", "Lucy", "Cristian", "Luisa"]
    
    // define the number of rows in the section
    // returns an integer, which will be the number of rows in the section of the table. all tables are divided into sections - default is 1
    // -> means function must return an integer
    func tableView(tableView:UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // will run the function below as many times as the length of the array
        return cellContent.count
    }
    
    // defines the contents of each individual cell - decide what content to display there
    //indexpath tells us what row we're on at any given time
    func tableView(tableView:UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
        
        //create a cell to return
        // use let when the variable wont be changed. could use var too.
        let cell = UITableViewCell(style: UITableViewCellStyle.Default , reuseIdentifier: "Cell")
        
        cell.textLabel?.text = cellContent[indexPath.row] // current row
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

