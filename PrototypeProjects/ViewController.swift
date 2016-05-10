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
    
    let usercompoundpassword:String = ""
    
    let userstorepassword:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor =  UIColor(red: 0.698, green: 0.6824, blue: 0.949, alpha: 1.0)
        
//
        
        User.instance.setName("Pattanapong")
        
        Userstore.instance.setNamestore("GolfGap")
    
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
        
//        if segue.identifier == ""{
//            var destination:Compount1ViewController = segue.destinationViewController as! Compount1ViewController
        
//        }

     }
 


    
    

    @IBAction func action(sender: AnyObject) {
        
//        var loginTextField: UITextField?
        var passwordTextField: UITextField?
        let alertController = UIAlertController(title: "LOGIN", message: "Need you password", preferredStyle: .Alert)
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
        let alertController = UIAlertController(title: "LOGIN", message: "Need you password", preferredStyle: .Alert)
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
