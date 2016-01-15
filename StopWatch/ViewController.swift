//
//  ViewController.swift
//  StopWatch
//
//  Created by Yuma Yamamoto on 2015/09/01.
//  Copyright (c) 2015年 Yuma Yamamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var count: Float = 0.0
    var timer: NSTimer = NSTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func start() {
        if !timer.valid {
            
            timer = NSTimer.scheduledTimerWithTimeInterval(0.01,
                target: self,
                selector: Selector("up"),
                userInfo: nil,
                repeats: true
            )
        }
    }
    
    func up() {
        
        count = count + 0.01
        
        label.text = String(format: "%.2f",count)
    }
    
    @IBAction func stop() {
        if timer.valid {
        
            timer.invalidate()
            
        }
        
    }
    
    @IBAction func reset() {
            
            count = 0.00
        label.text="\(count)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

