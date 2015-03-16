//
//  ViewController.swift
//  Bouncing Labels
//
//  Created by Annemarie Ketola on 12/1/14.
//  Copyright (c) 2014 UpEarly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 1. create/declare ivars (instance variables)
    var myFirstLabel: UILabel!
    var iPhoneLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        // 2. create the label
        myFirstLabel = UILabel()
        iPhoneLabel = UILabel()
        
        addLabels()
        
        var tapGesture = UITapGestureRecognizer(target: self, action: Selector("handleTapGesture:"))
        view.addGestureRecognizer(tapGesture)
    }
    
    func handleTapGesture(tapGesture: UITapGestureRecognizer) {
        println("tap")
        
        addLabels()
    }
    
    func addLabels() {
        myFirstLabel.text = "My first"
        myFirstLabel.font = UIFont.systemFontOfSize(36)
        myFirstLabel.sizeToFit()
        myFirstLabel.center = CGPoint(x: 0, y: 240)
        view.addSubview(myFirstLabel)
        
        UIView.animateWithDuration(0.5, delay: 0.0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.0, options: nil, animations: {
            
            //self.myFirstLabel.center = CGPoint(x: 100, y: 40 + 200)
            self.myFirstLabel.center = CGPoint(x: 40 + 200, y: 240)
            }, completion: nil)
        iPhoneLabel.text = "iPhone App"
        iPhoneLabel.font = UIFont.boldSystemFontOfSize(48)
        iPhoneLabel.sizeToFit()
        iPhoneLabel.center = CGPoint(x: 200, y: 90)
        view.addSubview(iPhoneLabel)
        
        iPhoneLabel.alpha = 0 //makes the lable invisibal prior to bouncing down
        
        UIView.animateWithDuration(2.0, delay: 0.2, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.0, options: nil, animations: {
            self.iPhoneLabel.center = CGPoint(x: 200, y:90+200)
            self.iPhoneLabel.alpha = 5 //visable now
            }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

