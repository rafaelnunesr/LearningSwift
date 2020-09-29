//
//  ViewController.swift
//  SuperShop
//
//  Created by Rafael Rios on 9/29/20.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: WELCOME INFO
    @IBOutlet weak var textLabelWelcomeInfo: UILabel!
    
    // MARK: TEXTFIELDS
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    // MARK: BUTTONS SIGN IN & SIGN OUT
    @IBOutlet weak var buttonSignIn: UIButton!
    @IBOutlet weak var buttonSignUp: UIButton!
    
    var products = Products()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButtons()
        hardInitProducts()
    }

    // MARK: ACTION BUTTONS
    @IBAction func actionSignIn(_ sender: Any) {
    }
    
    @IBAction func actionSignUp(_ sender: Any) {
    }
    
    func setupButtons() {
        
        buttonSignIn.setBackgroundButton(color: UIColor.blue)
        buttonSignUp.setBackgroundButton(color: UIColor.systemOrange)
        
        buttonSignIn.setRadiusCornerButtons()
        buttonSignUp.setRadiusCornerButtons()
        
        buttonSignIn.setTextColorButton()
        buttonSignUp.setTextColorButton()
        
        buttonSignIn.setFontWeightButton()
        buttonSignUp.setFontWeightButton()
        
    }
    
    func hardInitProducts() {
        products.arrayProducts.append(Product(productName: "Knife X Model", expirationDate: nil, price: 22.35))
        products.arrayProducts.append(Product(productName: "Cereal Fruits", expirationDate: "06/2021", price: 6.88))
        products.arrayProducts.append(Product(productName: "Chips Potato", expirationDate: "12/2020", price: 4.79))
        products.arrayProducts.append(Product(productName: "Soda Lemon", expirationDate: "07/2021", price: 1.99))
        
    }
    
}

