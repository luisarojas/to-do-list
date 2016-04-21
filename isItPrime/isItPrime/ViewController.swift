//
//  ViewController.swift
//  isItPrime
//
//  Created by Luisa Rojas on 2016-04-19.
//  Copyright © 2016 lrg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet var inputNumber: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        var isPrime = true // will only change if proven otherwise
        
        // need to unwrap for every time we need to use this variable
        var num = Int(inputNumber.text!)
        
        var unwrappedNum = 0
        
        if inputNumber != nil {
            
            unwrappedNum = num!
            
            if unwrappedNum == 1 {
                
                isPrime = false
                
            } else if unwrappedNum != 2 && unwrappedNum < 10000 {
                
                for var i = 2; i < unwrappedNum; i += 1 {
                    
                    if unwrappedNum % i == 0 { // number is divisible by this number: not prime!
                        isPrime = false
                    }
                }
            }
            
        } else {
            resultLabel.text = "Please enter a number."
        }
        
        if unwrappedNum > 10000{
            resultLabel.text = "Please enter a smaller number..."
        } else if isPrime == true {
            
            resultLabel.text = "Yep! \(num!) is prime."
            
        } else {
            
            resultLabel.text = "Nope! \(num!) is not prime."
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // the view controller is responsible for that particular text field
        self.inputNumber.delegate = self
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

