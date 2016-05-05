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
    
    let usercompoundpassword:String = "g"
    let userstorepassword:String = "f"
    
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
        
//        var loginTextField: UITextField?
        var passwordTextField: UITextField?
        let alertController = UIAlertController(title: "UIAlertController", message: "UIAlertController With TextField", preferredStyle: .Alert)
        let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
            print("Ok Button Pressed")
            
            
            
            
            if((passwordTextField?.text)   == self.userstorepassword ){
                self.performSegueWithIdentifier("store", sender: self)
            }
            else{
                self.presentViewController(alertController, animated: true, completion: nil)
            }
            
            
            
            
            
        })
        let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
            print("Cancel Button Pressed")
        }
        
        alertController.addAction(ok)
        alertController.addAction(cancel)
        alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
            // Enter the textfiled customization code here.
            passwordTextField = textField
            passwordTextField?.placeholder = "Password"
            passwordTextField?.secureTextEntry = true
        }
        
        presentViewController(alertController, animated: true, completion: nil)
        

    }

    
    @IBAction func compound(sender: AnyObject) {
//        var loginTextField: UITextField?
        var passwordTextField: UITextField?
        let alertController = UIAlertController(title: "UIAlertController", message: "UIAlertController With TextField", preferredStyle: .Alert)
        let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
            print("Ok Button Pressed")
            
            
            if((passwordTextField?.text)   == self.usercompoundpassword ){
             self.performSegueWithIdentifier("compount", sender: self)
            }
            else{
                self.presentViewController(alertController, animated: true, completion: nil)
            }
            
            
            
           
            
        })
        let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
            print("Cancel Button Pressed")
        }
        
        alertController.addAction(ok)
        alertController.addAction(cancel)
                alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
            // Enter the textfiled customization code here.
            passwordTextField = textField
            passwordTextField?.placeholder = "Password"
            passwordTextField?.secureTextEntry = true
            
        }
        
        presentViewController(alertController, animated: true, completion: nil)




}
}
