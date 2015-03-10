//
//  ViewController.swift
//  Click Counter
//
//  Created by avi on 10/03/15.
//  Copyright (c) 2015 avi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // model
    var count = 0
    var label: UILabel!
    
    func incrementCount() {
        count++
        label.text = "\(count)"
    }
    
    func decrementCount() {
        count--
        label.text = "\(count)"
    }
    
    func toggleBackground() {
        if view.backgroundColor == UIColor(red: 1, green: 1, blue: 1, alpha: 1) {
            view.backgroundColor = UIColor.grayColor()
        } else {
            view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // adds a label
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        // adds a increment button
        var incButton = UIButton()
        incButton.frame = CGRectMake(150, 250, 120, 60)
        incButton.setTitle("Increment", forState: .Normal)
        incButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        view.addSubview(incButton)
        
        incButton.addTarget(self, action: "incrementCount", forControlEvents: .TouchUpInside)
        
        // adds a decrement button
        
        var decButton = UIButton()
        decButton.frame = CGRectMake(150, 350, 120, 60)
        decButton.setTitle("Decrement", forState: .Normal)
        decButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        view.addSubview(decButton)
        
        decButton.addTarget(self, action: "decrementCount", forControlEvents: .TouchUpInside)
        
        // adds a button which toggles the background
        
        var toggleBgButton = UIButton()
        toggleBgButton.frame = CGRectMake(150, 450, 180, 60)
        toggleBgButton.setTitle("Toggle Background", forState: .Normal)
        toggleBgButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        view.addSubview(toggleBgButton)
        
        toggleBgButton.addTarget(self, action: "toggleBackground", forControlEvents: .TouchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

