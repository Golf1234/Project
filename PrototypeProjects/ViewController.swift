//
//  ViewController.swift
//  PrototypeProjects
//
//  Created by Pattanapong Chankaew on 1/16/2559 BE.
//  Copyright © 2559 Pattanapong Chankaew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    var tf:UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor =  UIColor(red: 0.698, green: 0.6824, blue: 0.949, alpha: 1.0)
        
//        let isUserLoggedIn = NSUserDefaults.standardUserDefaults().boolForKey("isUserLoggedIn")
//        
//        if(!isUserLoggedIn ){
//            
//            
//            self.performSegueWithIdentifier("store", sender: self)
//        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func action(sender: AnyObject) {
   
    let alert = UIAlertController(title: "LOGIN", message: "Your password", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addTextFieldWithConfigurationHandler { textField in
            textField.placeholder = "Password"
            textField.secureTextEntry = true
            
            
            
          
        }
        
        let done = {
            

            (action: UIAlertAction!) in
            self.dismissViewControllerAnimated(true, completion: nil)
            
            NSUserDefaults.standardUserDefaults().synchronize()
            
            
            self.performSegueWithIdentifier("store", sender: self)
            
        }

        
        
    alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: done))
        self.presentViewController(alert,animated:true, completion: nil)
        
    alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
 
        
    }

    
    @IBAction func compound(sender: AnyObject) {
        
        let alert = UIAlertController(title: "LOGIN", message: "Your password", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addTextFieldWithConfigurationHandler { textField in
            textField.placeholder = "Password"
            textField.secureTextEntry = true
        }

        
        let done = {
            (action: UIAlertAction!) in
            self.dismissViewControllerAnimated(true, completion: nil)
            
            NSUserDefaults.standardUserDefaults().synchronize()
           
            self.performSegueWithIdentifier("compount", sender: self)
            
        }
        
        
        
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: done))
        self.presentViewController(alert,animated:true, completion: nil)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))

        

    
    
    }
    
   }

