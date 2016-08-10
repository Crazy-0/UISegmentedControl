//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by 廖堉筌 on 2016/5/29.
//  Copyright © 2016年 廖堉筌. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var mySegmentControl: UISegmentedControl!
    
    let privatelist:[String] = ["private item 1","private item 2"]
    let friendsandfamily:[String] = ["Friend item 1","Friend item 2","Friend item 3"]
    let publiclist:[String] = ["Public item 1","Public item 2","Public item 3","Public item 4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        var returnValue = 0
        
        switch(mySegmentControl.selectedSegmentIndex)
        {
        case 0:
            returnValue = privatelist.count
            break
        case 1:
            returnValue = friendsandfamily.count
            break
        case 2:
            returnValue = publiclist.count
            break
        default:
            break
        }
        
        return returnValue
    }

    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
    
        let myCell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)
        
        switch(mySegmentControl.selectedSegmentIndex)
        {
        case 0:
            myCell.textLabel!.text = privatelist[indexPath.row]
            break
        case 1:
            myCell.textLabel!.text = friendsandfamily[indexPath.row]
            break
        case 2:
            myCell.textLabel!.text = publiclist[indexPath.row]
            break
        default:
            break
        }
        
        return myCell
    }

    @IBAction func SegmentedControlActionChanged(sender: AnyObject) {
        
        TableView.reloadData()
    }

    @IBAction func Refresh(sender: AnyObject) {
      
        TableView.reloadData()
    }























}//end




