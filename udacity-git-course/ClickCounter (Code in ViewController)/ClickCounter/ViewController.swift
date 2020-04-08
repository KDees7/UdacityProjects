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
    var label:UILabel!
    var secondLabel:UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //MARK: Label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        //MARK: Label 2
        let secondLabel = UILabel()
        secondLabel.frame = CGRect(x: 130, y: 130, width: 60, height: 60)
        secondLabel.text = "0"
        view.addSubview(secondLabel)
        self.secondLabel = secondLabel
        
        //MARK: Button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width:60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        //MARK: Decrement Button
        let decrementButton = UIButton()
        decrementButton.frame = CGRect(x: 150, y: 300, width:100, height: 60)
        decrementButton.setTitle("Decrement", for: .normal)
        decrementButton.setTitleColor(UIColor.purple, for: .normal)
        view.addSubview(decrementButton)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        
        decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
        }
    
    
    
     //MARK: Function
    @objc func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
        self.secondLabel.text = "\(self.count)"
    }
        
    //MARK: Function
    @objc func decrementCount(){
       self.count -= 1
       self.label.text = "\(self.count)"
       self.secondLabel.text = "\(self.count)"
        
    }


}

