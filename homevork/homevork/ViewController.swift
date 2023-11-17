//
//  ViewController.swift
//  homevork
//
//  Created by qeqwe on 15.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var highConstaint: NSLayoutConstraint!
    
    @IBOutlet weak var label: UILabel!
    
    var count = 1

    @IBAction func labelRoll(_ sender: Any) {
        
        count += 1
        
        if count % 2 == 0 {
            highConstaint.constant = 0
            view.layoutIfNeeded()
            
        } else {
            
            label.numberOfLines = 5
            highConstaint.constant = 150
            view.layoutIfNeeded()
            
        }
    }
}

