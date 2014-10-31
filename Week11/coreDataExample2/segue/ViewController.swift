//
//  ViewController.swift
//  segue
//
//  Created by Student on 10/17/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ColorTwoViewControllerDelegate {

    @IBOutlet var ColorLable: UILabel!
    @IBOutlet var Name: UILabel!
    @IBOutlet var LastName: UILabel!
    @IBOutlet var Age: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func myVCDidFinish(controller:ColorTwoViewController,text:String, name:String, lastname: String, age:String){
        ColorLable.text = "Color: " + text
        Name.text = "Name:" + name
        LastName.text = "Last Name:" + lastname
        Age.text = "Agge:" + age
        controller.navigationController?.popViewControllerAnimated(true)
        
        
    
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "mysegue"){
            let vc = segue.destinationViewController as ColorTwoViewController
            vc.ColorString = ColorLable.text!
            vc.delegate = self
        }
    }


}

