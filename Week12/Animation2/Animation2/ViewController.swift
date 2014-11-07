//
//  ViewController.swift
//  Animation2
//
//  Created by Student on 11/7/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Create and add a colored square
    let coloredSquare = UIView()
    let delay = 0.0
    let options = UIViewAnimationOptions.CurveEaseInOut
    let damping: CGFloat = 0.5
    let velocity = 1.0
    let duration = 1.0
    let size : CGFloat = 50
    let yPosition : CGFloat = 120
    
    @IBOutlet var Animate: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func animateButtonPressed(sender: AnyObject) {
        
        
    }
    
    
    
    
}





