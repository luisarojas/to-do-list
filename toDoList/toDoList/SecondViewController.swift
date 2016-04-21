//
//  SecondViewController.swift
//  toDoList
//
//  Created by Luisa Rojas on 2016-04-20.
//  Copyright © 2016 lrg. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var item: UITextField!
    
    @IBAction func addItem(sender: AnyObject) {
        // add item to the global toDoList array
        toDoList.append(item.text!)
        //update nsuserdefaults every time an item is added
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        item.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.item.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // close the keyboard when the user taps outside of it
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    // gets called when the return button is pressed
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        // close the keyboard
        textField.resignFirstResponder()
        
        return true
    }

}