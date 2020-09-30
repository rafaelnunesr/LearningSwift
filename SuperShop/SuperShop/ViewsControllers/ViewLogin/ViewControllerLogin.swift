//
//  ViewController.swift
//  SuperShop
//
//  Created by Rafael Rios on 9/29/20.
//

import UIKit

class ViewControllerLogin: UIViewController {
    
    // MARK: WELCOME INFO
    @IBOutlet weak var textFieldWelcomeMessage: ViewControllerLogin!
    
    // MARK: TEXTFIELDS
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    // MARK: BUTTONS SIGN IN & SIGN OUT
    @IBOutlet weak var buttonSignIn: UIButton!
    @IBOutlet weak var buttonSignUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButtons()
    }

    // MARK: ACTION BUTTONS
    @IBAction func actionSignIn(_ sender: Any) {
        
        if let viewProducts = UIStoryboard(name: "Products", bundle: nil).instantiateInitialViewController() as? ViewControllerProducts {
            navigationController?.pushViewController(viewProducts, animated: true)
        }
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
    
}

