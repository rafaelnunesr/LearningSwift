//
//  ViewSignUp.swift
//  SuperShop
//
//  Created by Rafael Rios on 9/29/20.
//

import UIKit

class ViewControllerSignUp: UIViewController {
    
    
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var textFieldPasswordConfirmation: UITextField!
    
    
    @IBOutlet weak var textLabelTerms: UILabel!
    

    @IBOutlet weak var buttonCheckTerms: UIButton!
    @IBOutlet weak var buttonSignUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func actionCheckTerms(_ sender: Any) {
    }
    

    @IBAction func actionSignUp(_ sender: Any) {
    }
}
