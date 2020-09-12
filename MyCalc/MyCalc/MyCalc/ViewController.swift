//
//  ViewController.swift
//  MyCalc
//
//  Created by Rafael Rios on 9/3/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstOperator: String?
    var secondOperator: String?
    var mathOperator: Character?
    var total: Double = 0
    var dot: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelDisplay.text = "0"
    }

    func defineIfFirstOrSecondOperator() -> Int {
        if mathOperator == nil {
            return 1
        }
        
        dot = false
        return 2
    }
    
    //test
    
    
    func handleDisplay() {
        
        var display: String = ""
        
        if let value1 = firstOperator {
            display = "\(value1)"
        }
        
        if let operatorMath = mathOperator {
            display = "\(display) \(operatorMath)"
        }
        
        if let value2 = secondOperator {
            display = "\(display) \(value2)"
        }
        
        labelDisplay.text = display
    }
    
    func handleNumericButtons(_ btnPressed: Character) {
        
        if btnPressed == "0" && labelDisplay.text == "0" {
            labelDisplay.text = "0"
        }
        
        if defineIfFirstOrSecondOperator() == 1 {
            if let value1 = firstOperator {
                firstOperator = "\(value1)\(btnPressed)"
            }else {
                firstOperator = "\(btnPressed)"
            }
        }else {
            if let value2 = secondOperator {
                secondOperator = "\(value2)\(btnPressed)"
            }else {
                secondOperator = "\(btnPressed)"
            }
        }
        
        handleDisplay()
    }
    
    func doMathOperation(_ mathOperation: Character) {
        
        var operator1: Double = 0
        var operator2: Double = 0
        
        if let value1 = firstOperator {
            operator1 = Double(value1)!
        }
        
        if let value2 = secondOperator {
            operator2 = Double(value2)!
        }
        
        switch mathOperation {
        case "+":
             total = operator1 + operator2
            
        case "-":
            total = operator1 - operator2
        case "/":
            total = operator1 / operator2
            
        case "x":
            total = operator1 * operator2
    
        default:
               labelDisplay.text = "Error"
        }
        
        firstOperator = String(total)
        secondOperator = nil
        mathOperator = nil
        
        handleDisplay()
    }
    
    func handleMathFunction(_ mathSymbol: Character) {
        
        switch mathSymbol {
        case "=":
            if let mathOperator_ = mathOperator {
                doMathOperation(mathOperator_)
            }
        default:
           mathOperator = mathSymbol
        }
        
        handleDisplay()
    }
    
    @IBOutlet weak var labelDisplay: UILabel!
    
    @IBAction func zeroButton(_ sender: Any) {
        handleNumericButtons("0")
    }
    
    @IBAction func oneButton(_ sender: Any) {
        handleNumericButtons("1")
    }
    
    @IBAction func twoButton(_ sender: Any) {
        handleNumericButtons("2")
    }
    
    @IBAction func threeButton(_ sender: Any) {
        handleNumericButtons("3")
    }
    
    @IBAction func fourButton(_ sender: Any) {
        handleNumericButtons("4")
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        handleNumericButtons("5")
    }
    
    @IBAction func sixButton(_ sender: Any) {
        handleNumericButtons("6")
    }

    @IBAction func sevenButton(_ sender: Any) {
        handleNumericButtons("7")
    }
    
    @IBAction func eigthButton(_ sender: Any) {
        handleNumericButtons("8")
    }
    
    @IBAction func nineButton(_ sender: Any) {
        handleNumericButtons("9")
    }
    
    @IBAction func divisionButton(_ sender: Any) {
        handleMathFunction("/")
    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        handleMathFunction("x")
    }
    
    @IBAction func minusButton(_ sender: Any) {
        handleMathFunction("-")
    }
    
    @IBAction func plusButton(_ sender: Any) {
        handleMathFunction("+")
    }
    
    @IBAction func equalButton(_ sender: Any) {
        handleMathFunction("=")
    }
    
    
    @IBAction func acButton(_ sender: Any) {
        firstOperator = nil
        secondOperator = nil
        mathOperator = nil
        
        labelDisplay.text = "0"
    }
    
    
    @IBAction func dotButton(_ sender: Any) {
        if !dot {
            dot = true
            handleNumericButtons(".")
        }
    }
}

