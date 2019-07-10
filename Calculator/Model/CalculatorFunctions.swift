//
//  CalculatorFunctions.swift
//  Calculator
//
//  Created by serena on 7/10/19.
//  Copyright © 2019 Serena Cheng. All rights reserved.
//

import Foundation

struct CalculatorFunctions {
    
    private var number : Double?
    
    mutating func setNumber(_ number : Double) {
        self.number = number
    }
    
    func calculate(symbol : String) -> Double? {
        
        if let num = number {
            
            if symbol == "AC" {
                return 0
            }
            else if symbol == "+/−" {
                return num * -1
            }
            else if symbol == "%" {
                return num / 100
            }
            
        }
        
        return nil
    }
    
}
