//
//  ViewController.swift
//  Lab
//
//  Created by Student on 9/26/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var TBV: UITableView!
    @IBOutlet var TField: UITextField!
    var sortedKeys:[String] = []
    
    @IBOutlet weak var Button: UIButton!
        @IBAction func Addtext(sender: AnyObject) {
        var st=TField.text
            sortedKeys.append(st)
            TBV.reloadData()
    }
    
    func TBV(TBV: UITableView!, numberOfRowsInSection section: Int) -> Int{
        return sortedKeys.count
        
    }
    
    func numberOfSectionInTableView(TBV: UITableView!) -> Int {
        return 1
    }
    
    func TBV(TBV: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!){
        let alert = UIAlertController(title: "Item Select", message: "You Selected", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {(alert:UIAlertAction!) in print("An alert of type\(alert.style.hashValue)")}))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func TBV(TBV: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        var cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: nil)
        cell.textLabel!.text = self.sortedKeys[indexPath.row]
        return cell
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}