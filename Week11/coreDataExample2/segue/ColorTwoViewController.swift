//
//  ColorTwoViewController.swift
//  segue
//
//  Created by Student on 10/17/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit
protocol ColorTwoViewControllerDelegate{
    func myVCDidFinish(controller:ColorTwoViewController,text:String, name:String, lastname:String, age:String)
}

class ColorTwoViewController: UIViewController {
    
    @IBOutlet var red: UIButton!
    @IBOutlet var green: UIButton!
    @IBOutlet var blue: UIButton!
    
    @IBOutlet var Name: UITextField!
    @IBOutlet var LastName: UITextField!
    @IBOutlet var Age: UITextField!
    
    
    @IBOutlet var OutName: UILabel!
    @IBOutlet var OutLastName: UILabel!
    @IBOutlet var OutAge: UILabel!
    
    
    var delegate:ColorTwoViewControllerDelegate? = nil
    var ColorString = ""
    var CR = [UIColor.redColor(),UIColor.greenColor(),UIColor.blueColor()]
    
    
    @IBAction func Submit(sender: UIButton) {
        OutName.text = Name.text
        OutLastName.text = LastName.text
        OutAge.text = Age.text
    
    }
    
    @IBOutlet var ColorLable: UILabel!
    
    
    @IBAction func SaveColor(sender: UIBarButtonItem) {
        if(delegate != nil){
            delegate!.myVCDidFinish(self,text: ColorLable!.text!, name: OutName!.text!, lastname:OutLastName!.text!, age:OutAge!.text!)
        }
        
    }
    
    @IBAction func ColorSelectionButton(sender: UIButton) {
        ColorLable.text = sender.titleLabel!.text!
        ColorLable.textColor = getRandomColor()
        //ColorLable.backgroundColor = getRandomColor()
        ColorLable.font = UIFont.italicSystemFontOfSize(20)
        ColorLable.layer.borderWidth = 5
        ColorLable.layer.borderColor = getRandomColor().CGColor
        
        OutName.textColor = ColorLable.textColor
        OutLastName.textColor = ColorLable.textColor
        OutAge.textColor = ColorLable.textColor
        
        
        
    }
    func getRandomColor() -> UIColor{
        
        var randomRed:CGFloat = CGFloat(drand48())
        
        var randomGreen:CGFloat = CGFloat(drand48())
        
        var randomBlue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        ColorLable.text = ColorString
     
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
