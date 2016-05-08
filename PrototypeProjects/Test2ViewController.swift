//
//  Test2ViewController.swift
//  PrototypeProjects
//
//  Created by Pattanapong Chankaew on 1/25/2559 BE.
//  Copyright © 2559 Pattanapong Chankaew. All rights reserved.
//

import UIKit

class Test2ViewController: UIViewController ,UITableViewDataSource ,UITableViewDelegate{

    
    @IBOutlet var tableview: UITableView!
    
    @IBOutlet var labelusernamestore: UILabel!
    
    
    
    var data = ["Polymer","Latex","Sulphur","ZnO","ZDEC","ZDBC","WL","TiO2","Anti foam","Nitric Acid","LMC9CF","Ca(NO3)2","DCA"]
    var count:[Int] = [20,8,5,77,55,25,15,99,30,45,33,33,66]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//
//        let isUserLoggedIn = NSUserDefaults.standardUserDefaults().boolForKey("isUserLoggedIn")
//
//        if(!isUserLoggedIn ){
//            
//            
//            self.performSegueWithIdentifier("store", sender: self)
//        }
        
        labelusernamestore.text = Userstore.instance.getNamestore()


        // Do any additional setup after loading the view.
        if count.contains(5) {
            
                let notificationSettings = UIUserNotificationSettings(forTypes: [.Alert, .Badge, .Sound], categories: nil)
                UIApplication.sharedApplication().registerUserNotificationSettings(notificationSettings)
                
                guard let settings = UIApplication.sharedApplication().currentUserNotificationSettings() else { return }
                
                if settings.types == .None {
                    let ac = UIAlertController(title: "Can't schedule", message: "Either we don't have permission to schedule notifications, or we haven't asked yet.", preferredStyle: .Alert)
                    ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
                    presentViewController(ac, animated: true, completion: nil)
                    return
                }
                
                let notification = UILocalNotification()
                
                notification.fireDate = NSDate(timeIntervalSinceNow :20)
                notification.alertBody = "Products is low!"
                notification.alertAction = "be awesome!"
                notification.soundName = UILocalNotificationDefaultSoundName
                notification.userInfo = ["CustomField1": "w00t"]
            
            
                UIApplication.sharedApplication().scheduleLocalNotification(notification)
            
            

        }
 
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        sender as! NSIndexPath
//        playtan = data[sender?.indexPath.row]
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! Test2TableViewCell
        
        cell.labeltest2?.text = data[indexPath.row]
        cell.labelcount?.text = "\(count[indexPath.row])"
        
        if((indexPath.row%2)==0){
            cell.backgroundColor =  UIColor(red: 1, green: 1, blue: 1, alpha: 1.0)
        
        }
        else{
           cell.backgroundColor = UIColor(red: 0.949, green: 0.949, blue: 0.949, alpha: 1.0)
        }

        
        return cell
        
        
    }
    
//    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        performSegueWithIdentifier("popdetail", sender: indexPath)
//    }
//    @IBAction func logout(sender: UIBarButtonItem) {
//        
//        let actionSheet = UIAlertController(title: "You need logout",
//            message: "",
//            preferredStyle: .ActionSheet)
//        
//        let dismissHandler = {
//            (action: UIAlertAction!) in
//            self.dismissViewControllerAnimated(true, completion: nil)
//            
//        }
//        
//        
//        let logout = {
//            (action: UIAlertAction!) in
//            self.dismissViewControllerAnimated(true, completion: nil)
//            
//            NSUserDefaults.standardUserDefaults().setBool(false, forKey: "isUserLoggedIn")
//            
//            NSUserDefaults.standardUserDefaults().synchronize()
//            
//            self.performSegueWithIdentifier("store", sender: self)
//        }
//        
//        
//        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: dismissHandler))
//        actionSheet.addAction(UIAlertAction(title: "Logout", style: .Default , handler: logout))
//        
//        
//        
//        if let presentationController = actionSheet.popoverPresentationController {
//            
//            presentationController.barButtonItem = sender
//            
//            
//            
//        }
//        //
//        
//        presentViewController(actionSheet, animated: true, completion: nil)
//        
//
//    }
  
    @IBAction func logout(sender: UIBarButtonItem) {
        
        
        
        let alert = UIAlertController(title: "LOGOUT", message: "Do your need logout", preferredStyle: UIAlertControllerStyle.Alert)
        
        let done = {
            (action: UIAlertAction!) in
            self.dismissViewControllerAnimated(true, completion: nil)
            
            NSUserDefaults.standardUserDefaults().synchronize()
            
            
        }
        
        
        
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: done))
        self.presentViewController(alert,animated:true, completion: nil)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
        

    }
    
    
}
