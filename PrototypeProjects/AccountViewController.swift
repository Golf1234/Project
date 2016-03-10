//
//  AccountViewController.swift
//  PrototypeProjects
//
//  Created by Pattanapong Chankaew on 1/20/2559 BE.
//  Copyright © 2559 Pattanapong Chankaew. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func done(sender: AnyObject) {
        
        let alert = UIAlertController(title: "Confirm", message: "Do yoe need confirm", preferredStyle: UIAlertControllerStyle.Alert)
        
//        alert.addTextFieldWithConfigurationHandler { textField in
//            textField.placeholder = "Password"
//            textField.secureTextEntry = true
//        }
        
//        let done = {
//            (action: UIAlertAction!) in
//            self.dismissViewControllerAnimated(true, completion: nil)
//            
//            NSUserDefaults.standardUserDefaults().synchronize()
//            
////            self.performSegueWithIdentifier("store", sender: self)
//        }
//        
        
        
        alert.addAction(UIAlertAction(title: "Confirm", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert,animated:true, completion: nil)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
        

   
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
