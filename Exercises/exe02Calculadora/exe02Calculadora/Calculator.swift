//
//  Calculator.swift
//  exe02Calculadora
//
//  Created by Rafael Rios on 9/19/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import Foundation

class Calculator {
    
    private var total: Float = 0
    private var doneMath: Bool = false
    
    func sum(firstNumber: Float, secondNumber: Float?) -> Float {
        doneMath = true
        
        if let secondNumber = secondNumber {
            return firstNumber + secondNumber
        }
        
        return total + firstNumber
        
    }
    
    func minus(firstNumber: Float, secondNumber: Float?) -> Float {
        doneMath = true
        
        if let secondNumber = secondNumber {
            return firstNumber - secondNumber
        }
        
        if !doneMath {
            return total - firstNumber
        }else {
            return firstNumber
        }
    }
    
    func division(firstNumber: Float, secondNumber: Float?) -> Float {
        doneMath = true
        
        if let secondNumber = secondNumber {
            return firstNumber / secondNumber
        }
        
        if !doneMath {
            return total / firstNumber
        }else {
            return firstNumber
        }
    }
    
    func multiply(firstNumber: Float, secondNumber: Float?) -> Float {
        doneMath = true
        
        if let secondNumber = secondNumber {
            return firstNumber * secondNumber
        }
        
        if !doneMath {
            return total * firstNumber
        }else {
            return firstNumber
        }
    }
    

}
