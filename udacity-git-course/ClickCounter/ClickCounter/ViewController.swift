//
//  ViewController.swift
//  ClickCounter
//
//  Created by Kara Dees on 4/5/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count=0
    @IBOutlet var label:UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
     //MARK: Function
    @IBAction func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
    }
        
    //MARK: Function
    @IBAction func decrementCount(){
       self.count -= 1
       self.label.text = "\(self.count)"
        
    }


}

