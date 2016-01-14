//
//  ViewController.swift
//  table view practice
//  add database source and table view protocol (UI)
//  Created by kportillo on 1/13/16.
//  Copyright © 2016 kportillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var myTableView: UITableView!
    var superheros = ["Superman", "Captain America", "Wonder Woman", "Aquaman", "Thor", "Dr. Strange"]
    var realName = ["Clark Kent", "Steve Rogers", "Diana", "Arthur Curry", "Thor", "Stephen Vincent Strange"]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //setting datasource and delagate to the view controller.
        myTableView.dataSource = self
        myTableView.delegate = self
        
    }
    
    // function creates cell that stores data
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
      let myTableViewCell = myTableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)
        myTableViewCell.textLabel?.text = superheros[indexPath.row] //puts in order value of array
        myTableViewCell.detailTextLabel?.text = realName[indexPath.row]
        return myTableViewCell
    }
    
    
    //sets # of rows in table view
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return superheros.count
    }

}

