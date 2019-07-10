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
    private var intermediate : (num1 : Double, symbol : String)?
    
    mutating func setNumber(_ number : Double) {
        self.number = number
    }
    
    mutating func calculate(symbol : String) -> Double? {
        
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
            else if symbol == "=" {
                return performOperation(num2: num)
            }
            else {
                intermediate = (num1 : num, symbol : symbol)
            }
            
        }
        
        return nil
    }
    
    func performOperation(num2 : Double) -> Double? {
        
        if let inter = intermediate {
            
            switch inter.symbol {
            case "+":
                return inter.num1 + num2
            case "−":
                return inter.num1 - num2
            case "×":
                return inter.num1 * num2
            case "÷":
                return inter.num1 / num2
            default:
                return num2
            }
        }
        
        return nil
    }
    
}
