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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

