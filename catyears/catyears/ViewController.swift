//
//  ViewController.swift
//  catyears
//
//  Created by Luisa Rojas on 2016-04-10.
//  Copyright © 2016 lrg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var age: UITextField!
    @IBOutlet var answer: UILabel!
    
    @IBAction func findAge(sender: AnyObject) {
        
        var enteredAge = Int(age.text!)
        
        if enteredAge != nil {
            var catYears = (enteredAge)! * 7
            
            answer.text = "\(catYears) years old!"
        } else {
            answer.text = "Please enter a valid number."
        }
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

