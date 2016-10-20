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
    @IBOutlet var successLabel: UILabel!
    
    @IBAction func addItem(_ sender: AnyObject) {
        
        var duplicate = false
        
        if !(item.text!).isEmpty {
            
            for x in toDoList {
                if item.text! == x {
                    duplicate = true
                }
            }
            
            if duplicate == false {
                if item.text!.characters.count > 32 {
                    successLabel.text = "Please try a shorter task..."
                   
                } else {
        
                    toDoList.append(item.text!)
                    UserDefaults.standard.set(toDoList, forKey: "toDoList")
                    successLabel.text = "You have successfully added \"\(item.text!)\" to your to-do list!"
                    item.text = ""
                }
            } else {
                successLabel.text = "Oops, looks like this item has already been added to your to-do list."
            }

        } else {
            successLabel.text = "Please enter *something* in the box above..."
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.item.delegate = self
        successLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        item.text = ""
        successLabel.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
