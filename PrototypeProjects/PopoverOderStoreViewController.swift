//
//  PopoverOderStoreViewController.swift
//  PrototypeProjects
//
//  Created by Pattanapong Chankaew on 1/27/2559 BE.
//  Copyright © 2559 Pattanapong Chankaew. All rights reserved.
//

import UIKit

class PopoverOderStoreViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet var pickerview: UIPickerView!
    
    @IBOutlet var text: UITextField!
    
    var pickerDataSource = ["kg", "ml"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerview.dataSource = self
        pickerview.delegate = self

        text.keyboardType = UIKeyboardType.NumberPad
        self.view.backgroundColor = UIColor(red: 0.9137, green: 0.9098, blue: 0.949, alpha: 1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataSource[row]
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
   
    }
    
    @IBAction func Cancle(sender: AnyObject) {
         self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func Done(sender: AnyObject) {
         self.dismissViewControllerAnimated(true, completion: nil)
    }
}
