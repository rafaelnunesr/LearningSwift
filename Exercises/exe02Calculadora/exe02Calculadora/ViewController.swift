//
//  ViewController.swift
//  exe02Calculadora
//
//  Created by Rafael Rios on 9/18/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Outlet Numeric Buttons
    @IBOutlet weak var buttonZero: UIButton!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var buttonFive: UIButton!
    @IBOutlet weak var buttonSix: UIButton!
    @IBOutlet weak var buttonSeven: UIButton!
    @IBOutlet weak var buttonEight: UIButton!
    @IBOutlet weak var buttonNine: UIButton!
    
    
    
    // MARK:  Action Buttons
    @IBOutlet weak var acButton: UIButton!

    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    @IBOutlet weak var dotButton: UIButton!
    
    
    @IBOutlet weak var textFieldResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roundButtons()
        
    }

    @IBAction func acButton(_ sender: Any) {
    }
    
    
    @IBAction func divisionButton(_ sender: Any) {
    }
    
    @IBAction func multiplyButton(_ sender: Any) {
    }
    
    
    @IBAction func minusButton(_ sender: Any) {
    }
    
    
    @IBAction func plusButton(_ sender: Any) {
    }
    
    
    @IBAction func equalButton(_ sender: Any) {
    }
    
}

extension ViewController {
    
    func roundButtons() {
        let radius: CGFloat = 16
        
        buttonZero.layer.cornerRadius = radius
        buttonOne.layer.cornerRadius = radius
        buttonTwo.layer.cornerRadius = radius
        
        buttonThree.layer.cornerRadius = radius
        buttonFour.layer.cornerRadius = radius
        buttonFive.layer.cornerRadius = radius
        
        buttonSix.layer.cornerRadius = radius
        buttonSeven.layer.cornerRadius = radius
        buttonEight.layer.cornerRadius = radius
        buttonNine.layer.cornerRadius = radius
    }
    

}

