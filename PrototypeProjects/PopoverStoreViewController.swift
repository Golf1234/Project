//
//  PopoverStoreViewController.swift
//  PrototypeProjects
//
//  Created by Pattanapong Chankaew on 1/27/2559 BE.
//  Copyright © 2559 Pattanapong Chankaew. All rights reserved.
//

import UIKit
import MessageUI

    class PopoverStoreViewController: UIViewController , UITableViewDataSource , UITableViewDelegate,MFMailComposeViewControllerDelegate{

    @IBOutlet var tableview: UITableView!
    
    
    var  data = [String]()
    var unit = [String]()
    var num  = [String]()
     var item: String=""
        
        
        var items:[[String:String]] = []
        
    
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.items = Orserlist.instance.get()
        
        print(items)
        
        
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
        return items.count
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
        let cell = tableView.dequeueReusableCellWithIdentifier("popstore", forIndexPath: indexPath) as! PopoverStoreTableViewCell
        cell.labelpop?.text = items[indexPath.row]["item"]
//        cell.labelpop?.text = data[indexPath.row]
        cell.labelunit?.text = items[indexPath.row]["amount"]
//        cell.labelunit2?.text = unit[indexPath.row]
        
        return cell
    }
     func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
            if editingStyle == UITableViewCellEditingStyle.Delete {
                items.removeAtIndex(indexPath.row)
                tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
                Orserlist.instance.deleteItem(indexPath.row)
            }
       
        }
        
        
        
    @IBAction func Confirm(sender: UIButton) {
        
        
         (sender as UIButton).backgroundColor = UIColor(red: 0.6824, green: 0.9765, blue: 0.9765, alpha: 1.0)
            self.dismissViewControllerAnimated(true, completion: nil)
       
        
       
        Orserlist.instance.clear(["item": item])
      

       
    }
       
    
        @IBAction func cancle(sender: UIButton) {
            
            (sender as UIButton).backgroundColor = UIColor(red: 0.9569, green: 0.7137, blue: 0.651, alpha: 1.0)
            self.dismissViewControllerAnimated(true, completion: nil)
        }
      
}