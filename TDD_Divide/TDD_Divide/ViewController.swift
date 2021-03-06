//
//  ViewController.swift
//  TDD_Divide
//
//  Created by Rafael Nunes Rios on 3/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    let calculatorBrain: CalculatorBrain = CalculatorBrain()

    @IBOutlet weak var firstNumberTextField: UITextField!
    @IBOutlet weak var secondNumberTextField: UITextField!
    @IBOutlet weak var resultTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButton(_ sender: UIButton) {
        
        guard let firstNumber = firstNumberTextField.text, let secondNumber = secondNumberTextField.text else { return }
        
        calculatorBrain.divideTwoNumbers(dividend: Float(firstNumber)!, divisor: Float(secondNumber)!) { (result, error) in
            
            if error == nil && result != nil {
                self.resultTextField.text = String(result!)
            }else {
                
            }
            
        }
        
    }
    
}

