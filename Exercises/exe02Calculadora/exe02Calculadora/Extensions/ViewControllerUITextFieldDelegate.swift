//
//  ViewControllerUITextFieldDelegate.swift
//  exe02Calculadora
//
//  Created by Rafael Rios on 9/19/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        
        if textFieldFirstNumberHasValue() {
            textFieldSecondNumber.becomeFirstResponder()
        }
        
    }
}
