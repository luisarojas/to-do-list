//
//  ViewController.swift
//  stopwatch
//
//  Created by Luisa Rojas on 2016-04-19.
//  Copyright © 2016 lrg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var playButton: UIBarButtonItem!
    @IBOutlet var pauseButton: UIBarButtonItem!
    @IBOutlet var stopButton: UIBarButtonItem!
    
    var timer = NSTimer()
    var count = 0
    
    func updateTime() {
        
        count += 1
        
        timeLabel.text = "\(count)"
    }

    @IBAction func pausePressed(sender: AnyObject) {
        timer.invalidate()
        
        pauseButton.enabled = false
        stopButton.enabled = false
        playButton.enabled = true
    }
    
    @IBAction func stopPressed(sender: AnyObject) {
        timer.invalidate()
        count = 0
        timeLabel.text = "0"
        
        stopButton.enabled = false
        pauseButton.enabled = false
        playButton.enabled = true
    }
    
    @IBAction func playPressed(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
        
        playButton.enabled = false
        pauseButton.enabled = true
        stopButton.enabled = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timeLabel.text = "0"
        
        pauseButton.enabled = false
        stopButton.enabled = false

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

