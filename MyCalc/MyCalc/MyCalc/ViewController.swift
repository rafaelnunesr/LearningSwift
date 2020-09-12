//
//  ViewController.swift
//  MyCalc
//
//  Created by Rafael Rios on 9/3/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var firstNumber: String?
    var secondNumber: String?
    var currentOperation: Operation?
    
    enum Operation {
        case add, subtract, multiply, divide
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelDisplay.text = "0"
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBOutlet weak var labelDisplay: UILabel!
    
    // Numeric Buttons
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eigthButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    
    // DOT BUTTON & AC BUTTON
    @IBOutlet weak var dotButton: UIButton!
    @IBOutlet weak var acButton: UIButton!
    
    // OPERATIONS
    @IBOutlet weak var equalButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var divisionButton: UIButton!

    
    @IBAction func numericBtnPressed(_ sender: UIButton) {
        if let btnValue = sender.currentTitle {
            concatNum(numberAsString: btnValue)
        }
    }
    
    private func checkIfLabelIsZero() -> Bool {
        if labelDisplay.text == "0" {
            return true
        }
        
        return false
    }
    
    private func checkFirstNumberOrSecondNumber() -> Int {
        if currentOperation == nil {
            return 1
        }
        
        return 2
    }
    
    private func concatNum(numberAsString num: String) {
        if num == "0" && checkIfLabelIsZero() {
           return
        }
        
        let whichOperator = checkFirstNumberOrSecondNumber()
        
        if whichOperator == 1 {
            if let firstNumber = firstNumber {
                self.firstNumber = "\(firstNumber)\(num)"
            }else {
                firstNumber = num
            }
                
            labelDisplay.text = firstNumber
            
        }else if whichOperator == 2 {
            
            if let secondNumber = secondNumber {
                self.secondNumber = "\(secondNumber)\(num)"
            }else {
                secondNumber = num
            }
                           
            labelDisplay.text = secondNumber
        }
        
    }
    
    @IBAction func operationBtnPressed(_ sender: Any) {
    }
    
    @IBAction func dotBtnPressed(_ sender: Any) {
    }
    
    
    @IBAction func acBtnPressed(_ sender: Any) {
    }
    
}

