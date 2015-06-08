//
//  FirstViewController.swift
//  todolist
//
//  Created by user on 3/10/15.
//  Copyright (c) 2015 user. All rights reserved.
//

import UIKit

var todolist = [String]()

class FirstViewController: UIViewController, UITableViewDelegate {
    


    @IBOutlet var todolisttable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return todolist.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = todolist[indexPath.row]
        
        return cell
        
    }
    
    override func viewDidAppear(animated: Bool) {
        todolisttable.reloadData()
    }
    


}

