//
//  ViewController.swift
//  Exam1_55011221035
//
//  Created by Student on 10/10/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    
    @IBOutlet var NameTF: UITextField!
    @IBOutlet var VolumeTF: UITextField!
    @IBOutlet var PriceTF: UITextField!
    @IBOutlet var TotalTF: UITextField!
    @IBOutlet var TotalButton: UIButton!
    @IBOutlet var ProfitButton: UIButton!
    @IBOutlet var TableView: UITableView!
    
    var volume: Double = 0.00
    var price: Double = 0.00
    var total: Double = 0.00
    
    func refreshUI(){
        VolumeTF.text = String(format: "%0.2f", volume)
        PriceTF.text = String(format: "%0.2f", price)
        TotalTF.text = "\(total)"
    }
    
    
    @IBAction func TotalSub(sender: AnyObject) {
        volume = Double((VolumeTF.text as NSString).doubleValue);
        price = Double((PriceTF.text as NSString).doubleValue);
        total = volume * price
        var result = ""
        result += "\(total)"
        TotalTF.text = result
        refreshUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func viewTapped(sender : AnyObject){
        VolumeTF.resignFirstResponder()
    }
    


}

