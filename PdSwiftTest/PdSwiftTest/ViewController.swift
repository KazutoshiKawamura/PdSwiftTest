//
//  ViewController.swift
//  PdSwiftTest
//
//  Created by kztskawamu on 2015/07/10.
//  Copyright (c) 2015年 cazcawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let dispatcher = PdDispatcher()
        PdBase.setDelegate(dispatcher)
        PdBase.openFile("main.pd", path: NSBundle.mainBundle().resourcePath)
    }
    
    @IBAction func pushButton() {
        PdBase.sendFloat(1.0 ,toReceiver:"onOff")
    }
    
    @IBAction func releaseButton() {
        PdBase.sendFloat(0.0 ,toReceiver:"onOff")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

