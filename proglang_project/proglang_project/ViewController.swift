//
//  ViewController.swift
//  proglang_project
//
//  Created by Luisa Rojas on 2016-04-08.
//  Copyright © 2016 lrg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    @IBAction func buttonPressed(sender: AnyObject) {
        
        myLabel.text = "Success!"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    // myLabel.text = "Success!"

    print("Hello World")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

