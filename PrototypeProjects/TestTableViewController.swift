//
//  TestTableViewController.swift
//  PrototypeProjects
//
//  Created by Pattanapong Chankaew on 1/20/2559 BE.
//  Copyright © 2559 Pattanapong Chankaew. All rights reserved.
//

import UIKit

class TestTableViewController: UIViewController , UITableViewDataSource , UITableViewDelegate , UIPopoverPresentationControllerDelegate{
    
    
    
    @IBOutlet var tableview: UITableView!
    
    @IBOutlet var labelusernamestore: UILabel!
   
    
    var data = ["Polymer","Latex","Sulphur","ZnO","ZDEC","ZDBC","WL","TiO2","Anti foam","Nitric Acid","LMC9CF","Ca(NO3)2","DCA"]
    var count:[Int] = [20,8,5,77,55,25,15,99,30,45,33,33,66]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        labelusernamestore.text = Userstore.instance.getNamestore()
        
        if [data] != nil {
        
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
        
        notification.fireDate = NSDate(timeIntervalSinceNow: 60)
        notification.alertBody = "The new oder from Compound!"
        notification.alertAction = "TO new oder!"
        notification.soundName = UILocalNotificationDefaultSoundName
        notification.userInfo = ["CustomField1": "w00t"]
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

     func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            data.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("lableCell", forIndexPath: indexPath) as! TestTableViewCell
        cell.labeldata?.text = data[indexPath.row]
        cell.labelcount?.text = "\(count[indexPath.row])"
        if((indexPath.row%2)==0){
         cell.backgroundColor =  UIColor(red: 1, green: 1, blue: 1, alpha: 1.0)
        }
        else{
          cell.backgroundColor = UIColor(red: 0.949, green: 0.949, blue: 0.949, alpha: 1.0)
        }
        return cell
    }
    
    @IBAction func totleoutstore(sender: AnyObject) {
    
        let alert = UIAlertController(title: "TOTEL", message: "Your need confirm", preferredStyle: UIAlertControllerStyle.Alert)
        
        
        
        
        
        
        
     
        
        alert.addAction(UIAlertAction(title: "Confirm", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert,animated:true, completion: nil)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
        

    }
    

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
//    
//    @IBAction func popover(sender: AnyObject) {
//        performSegueWithIdentifier("popover", sender: self)
//    }
//
//    @IBAction func popoverorver(sender: UIButton) {
//    performSegueWithIdentifier("popdetail", sender: self)
//    }
    
    
    @IBAction func Done(sender: AnyObject) {
        let alert = UIAlertController(title: "TOTEL", message: "Your need confirm", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "Confirm", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert,animated:true, completion: nil)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
        
    }

    //popoverเช็คของที่กดไปเพื่อนคอนเฟิม
}

