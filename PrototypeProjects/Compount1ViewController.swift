//
//  Compount1ViewController.swift
//  PrototypeProjects
//
//  Created by Pattanapong Chankaew on 1/25/2559 BE.
//  Copyright © 2559 Pattanapong Chankaew. All rights reserved.
//

import UIKit

class Compount1ViewController: UIViewController ,UITableViewDataSource ,UITableViewDelegate ,UIPopoverPresentationControllerDelegate{
    
    @IBOutlet var tableview: UITableView!
    
    var datacom1 = [String]()
    var sentdata = NSString()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
          lablenameuser.text = User.instance.getName()
        
        // Do any additional setup after loading the view.
        
        datacom1 = ["Polymer","Latex","Sulphur","ZnO","ZDEC","ZDBC","WL","TiO2","Anti foam","Nitric Acid","LMC9CF","Ca(NO3)2","DCA"]
        
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
      
        
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return datacom1.count
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
        if segue.identifier == "popdetail"{
        let indexPath = sender as! NSIndexPath
        
        let des : PopoverOderStoreViewController = segue.destinationViewController as! PopoverOderStoreViewController
        
        des.item = datacom1[indexPath.row]
        }
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellCompount1", forIndexPath: indexPath) as! Compount1TableViewCell
        cell.labelcompount1?.text = datacom1[indexPath.row]
        if((indexPath.row%2)==0){
            cell.backgroundColor = UIColor(red: 0.949, green: 0.949, blue: 0.949, alpha: 1.0)

        }
        else{
            cell.backgroundColor =    UIColor(red: 1, green: 1, blue: 1, alpha: 1.0)        }
        
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        
//        print("You selected cell #\(indexPath.row)!")
//        
//        self.sentdata = NSString()
        
        performSegueWithIdentifier("popdetail", sender: indexPath)
        
       
    }
    
    
//     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
//        if (segue.identifier == "popdetail"){
//            
//        }
//        
//            
//        
//    }
  
    
    @IBAction func totelcomorder(sender: AnyObject) {
        
        let alert = UIAlertController(title: "LOGIN", message: "Your password", preferredStyle: UIAlertControllerStyle.Alert)
        
        
        
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
    
    
    @IBAction func popOderCom(sender: AnyObject) {
        
        self.performSegueWithIdentifier("popoverOrderCom", sender: self)
        
    }
    
//    @IBAction func popoder(sender: UIButton) {
//        
//        print("dfdsf")
//
//        
//     performSegueWithIdentifier("popdetail", sender: self)
//    
//        
//        
//        
//    }
    
    @IBOutlet var lablenameuser: UILabel!
    
  
    
}



