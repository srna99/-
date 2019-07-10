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
    
    private var numLabelValue : Double{
        get {
            guard let number = Double(numberLabel.text!) else { fatalError("Invalid characters in label.") }
            return number
        }
        set {
            numberLabel.text = String(newValue)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func functionPressed(_ sender: UIButton) {
        
        isFinishedTyping = true

        if sender.currentTitle == "AC" {
            numberLabel.text = "0"
        }
        else if sender.currentTitle == "+/−" {
            numLabelValue = numLabelValue * -1
        }
        else if sender.currentTitle == "%" {
            numLabelValue = numLabelValue / 100
        }
        
    }
    
    @IBAction func numberPressed(_ sender: UIButton) {
        
        if let digit = sender.currentTitle {
            
            if isFinishedTyping {
                numberLabel.text = digit
                isFinishedTyping = false
            }
            else {
                
                if digit == "." {
                    
                    let isInt = floor(numLabelValue) == numLabelValue
                    
                    if !isInt {
                        return
                    }
                }
                numberLabel.text = numberLabel.text! + digit
            }
            
        }
        
    }
}

