//
//  ViewController.swift
//  Calculator
//
//  Created by serena on 7/10/19.
//  Copyright © 2019 Serena Cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    
    var isFinishedTyping = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func functionPressed(_ sender: UIButton) {
        
        isFinishedTyping = true
        
    }
    
    @IBAction func numberPressed(_ sender: UIButton) {
        
        if let number = sender.currentTitle {
            
            if isFinishedTyping {
                numberLabel.text = number
                isFinishedTyping = false
            }
            else {
                numberLabel.text = numberLabel.text! + number
            }
            
        }
        
    }
}

