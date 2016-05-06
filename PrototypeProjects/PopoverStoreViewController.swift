//
//  PopoverStoreViewController.swift
//  PrototypeProjects
//
//  Created by Pattanapong Chankaew on 1/27/2559 BE.
//  Copyright © 2559 Pattanapong Chankaew. All rights reserved.
//

import UIKit

    class PopoverStoreViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{

    @IBOutlet var tableview: UITableView!
    
    
    var  data = ["ZDBC","WL","TiO2","Anti foam","Nitric Acid","LMC9CF","Ca(NO3)2","DCA","Polymer"]
    var unit = ["kg","kg","kg","kg","kg","kg","kg","kg","kg","kg"]
    var num = ["100","99","92","89","85","82","81","79","75","73"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
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
        let cell = tableView.dequeueReusableCellWithIdentifier("popstore", forIndexPath: indexPath) as! PopoverStoreTableViewCell
        cell.labelpop?.text = data[indexPath.row]
        cell.labelunit?.text = num[indexPath.row]
        cell.labelunit2?.text = unit[indexPath.row]
        
        return cell
    }
     func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
            if editingStyle == UITableViewCellEditingStyle.Delete {
                data.removeAtIndex(indexPath.row)
                tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
            }
        }
        
        
        
    @IBAction func Confirm(sender: UIButton) {
        
        
         (sender as UIButton).backgroundColor = UIColor(red: 0.6824, green: 0.9765, blue: 0.9765, alpha: 1.0)
        
       self.dismissViewControllerAnimated(true, completion: nil)
    }
    
        @IBAction func cancle(sender: UIButton) {
            
            (sender as UIButton).backgroundColor = UIColor(red: 0.9569, green: 0.7137, blue: 0.651, alpha: 1.0)
            self.dismissViewControllerAnimated(true, completion: nil)
        }
      
}