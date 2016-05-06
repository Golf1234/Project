//
//  CompoundTotalViewController.swift
//  PrototypeProjects
//
//  Created by Pattanapong Chankaew on 1/27/2559 BE.
//  Copyright © 2559 Pattanapong Chankaew. All rights reserved.
//

import UIKit
import Alamofire

class CompoundTotalViewController: UIViewController ,UITableViewDataSource , UITableViewDelegate {

    @IBOutlet var tableview: UITableView!
    @IBOutlet var lablenameuser: UILabel!
    
    
    var test:String = ""
    
    
    var data = [["Latex","Sulphur","ZnO","ABC"],["ZDEC","ZDBC","TiO2"],["Anti foam","Nitric Acid","LMC9CF"]]

    let section = ["Mr.Pattanapong 1", "Mr.Pattatanapong 2" ,"Mr.Aniwat1"]
    
    var count = [["99","20","14","45"],["11","12","11"],["11 ","40 ","55"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lablenameuser.text = User.instance.getName()

        // Do any additional setup after loading the view.
        print(test)
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return section.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
       
    return User.instance.getName()
    
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
        let cell = tableView.dequeueReusableCellWithIdentifier("labelcomtotal", forIndexPath: indexPath) as! CompoundTotalTableViewCell
            cell.labelcomtotal?.text = self.data[indexPath.section][indexPath.row]
            cell.labelcount?.text = self.count[indexPath.section][indexPath.row]
        
        
        
        return cell
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
   
    @IBAction func showdetail(sender: UIButton) {
        performSegueWithIdentifier("showdetail", sender: self)
    }

}
