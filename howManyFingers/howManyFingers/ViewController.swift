//
//  ViewController.swift
//  howManyFingers
//
//  Created by Luisa Rojas on 2016-04-17.
//  Copyright © 2016 lrg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userGuesss: UITextField!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var score: UILabel!
    
    var scoreCount = 0
    
    @IBAction func guessButton(sender: AnyObject) {
        
        var randomNum = Int(arc4random_uniform(10))
        
        //convert guess from string to integer
        var guessedInt = Int(userGuesss.text!)

        score.text = "Score: \(scoreCount)"
    
        if guessedInt != nil && guessedInt >= 0 && guessedInt <= 10 {
            // user guessed correctly
            if guessedInt == randomNum {
                
                resultLabel.text = "Correct!"
                scoreCount += 1
                score.text = "Score: \(scoreCount)"
                
            } else {
                
                resultLabel.text = "Nope! It was \(randomNum)."
            }
            
            
        } else {
            resultLabel.text = "Please enter a number 0 - 10"
        }
        
        print(userGuesss.text)
        
    }
    
    @IBAction func resetButtonPressed(sender: AnyObject) {
    
        scoreCount = 0
        score.text = "Score: \(scoreCount)"
    
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