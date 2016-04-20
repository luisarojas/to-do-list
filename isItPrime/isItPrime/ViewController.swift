//
//  ViewController.swift
//  isItPrime
//
//  Created by Luisa Rojas on 2016-04-19.
//  Copyright © 2016 lrg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var inputNumber: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        var isPrime = true // will only change if proven otherwise
        
        // need to unwrap for every time we need to use this variable
        var num = Int(inputNumber.text!)
        
        if inputNumber != nil {
            
            var unwrappedNum = num!
            
            if unwrappedNum == 1 {
                
                isPrime = false
                
            } else if unwrappedNum != 2 {
                
                for var i = 2; i < unwrappedNum; i += 1 {
                    
                    if unwrappedNum % i == 0 { // number is divisible by this number: not prime!
                        isPrime = false
                    }
                }
            }
            
        } else {
            resultLabel.text = "Please enter a number."
        }
        
        if isPrime == true {
            
            resultLabel.text = "Yep! \(num!) is prime."
            
        } else {
            
            resultLabel.text = "Nope! \(num!) is not prime."
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

