//
//  SecondViewController.swift
//  todolist
//
//  Created by user on 3/10/15.
//  Copyright (c) 2015 user. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var item: UITextField!
    
    
    
    @IBAction func additem(sender: AnyObject) {
        
        todolist.append(item.text)
        
        
        item.text = ""
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        item.resignFirstResponder()
         return(true)
        
    }
    
   

}

