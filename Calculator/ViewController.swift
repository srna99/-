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
    
    private var isFinishedTyping = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func functionPressed(_ sender: UIButton) {
        
        isFinishedTyping = true
        
        guard let number = Double(numberLabel.text!) else { fatalError("Invalid characters in label.") }
        
        if sender.currentTitle == "AC" {
            numberLabel.text = "0"
        }
        else if sender.currentTitle == "+/−" {
            numberLabel.text = String(number * -1)
        }
        else if sender.currentTitle == "%" {
            numberLabel.text = String(number * 100)
        }
        
    }
    
    @IBAction func numberPressed(_ sender: UIButton) {
        
        if let digit = sender.currentTitle {
            
            if isFinishedTyping {
                numberLabel.text = digit
                isFinishedTyping = false
            }
            else {
                numberLabel.text = numberLabel.text! + digit
            }
            
        }
        
    }
}

