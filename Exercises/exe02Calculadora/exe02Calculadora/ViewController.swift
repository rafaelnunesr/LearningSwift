//
//  ViewController.swift
//  exe02Calculadora
//
//  Created by Rafael Rios on 9/18/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sumButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var divisionButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var textFieldFirstNumber: UITextField!
    @IBOutlet weak var textFieldSecondNumber: UITextField!
    
    var calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        roundAllButtons()
        
        textFieldFirstNumber.delegate = self
        textFieldSecondNumber.delegate = self
    }
    
    private func roundAllButtons() {
        for case let button as UIButton in self.view.subviews {
            button.layer.cornerRadius = 4
        }
    }
    
    
    @IBAction func actionSum(_ sender: Any) {
        doSum()
    }
    
    @IBAction func actionMinus(_ sender: Any) {
        doMinus()
    }
    
    @IBAction func actionDivision(_ sender: Any) {
        doDivision()
    }
    
    
    @IBAction func actionMultiply(_ sender: Any) {
        doMultiply()
    }
    
    private func getTextFieldFirstNumberValue() -> Float {
        var firstOperator: Float = 0
        
        if let first = textFieldFirstNumber.text {
            firstOperator = Float(first)!
        }
        
        return firstOperator
    }
    
    private func getTextFieldSecondNumber() -> Float? {
        
        if let second = textFieldSecondNumber.text {
            return Float(second)!
        }
        
        return nil
    }
    
    private func alert(title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .cancel) { (UIAlertAction) in
        }
        
        alert.addAction(okAction)
        self.present(alert, animated: true) {
           
        }
    }
    
    
    func textFieldFirstNumberHasValue() -> Bool {
        if textFieldFirstNumber.isEmpty() {
            return false
        }
    
        return true
    }
    
    func doSum() {
        if textFieldFirstNumberHasValue() {
            
            let firstOperator: Float = getTextFieldFirstNumberValue()
            let secondOperator: Float? = getTextFieldSecondNumber()
            
            let result = calculator.sum(firstNumber: firstOperator, secondNumber: secondOperator)
            
            totalLabel.text = String(result)
            
        }else {
          
            alert(title: "Error", message: "Inform at least one number")
            
        }
    }
    
    func doMinus() {
        if textFieldFirstNumberHasValue() {
            
            let firstOperator: Float = getTextFieldFirstNumberValue()
            let secondOperator: Float? = getTextFieldSecondNumber()
            
            let result = calculator.minus(firstNumber: firstOperator, secondNumber: secondOperator)
            
            totalLabel.text = String(result)
            
            
        }else {
          
            alert(title: "Error", message: "Inform at least one number")
            
        }
    }
    
    func doDivision() {
        if textFieldFirstNumberHasValue() {
            
            let firstOperator: Float = getTextFieldFirstNumberValue()
            let secondOperator: Float? = getTextFieldSecondNumber()
            
            let result = calculator.division(firstNumber: firstOperator, secondNumber: secondOperator)
            
            totalLabel.text = String(result)
            
        }else {
          
            alert(title: "Error", message: "Inform at least one number")
            
        }
    }
    
    func doMultiply() {
        if textFieldFirstNumberHasValue() {
            
           let firstOperator: Float = getTextFieldFirstNumberValue()
           let secondOperator: Float? = getTextFieldSecondNumber()
           
           let result = calculator.multiply(firstNumber: firstOperator, secondNumber: secondOperator)
           
           totalLabel.text = String(result)
            
        }else {
          
            alert(title: "Error", message: "Inform at least one number")
            
        }
    }

}

