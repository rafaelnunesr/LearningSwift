//
//  ViewControllerUITextFieldDelegate.swift
//  FastEmporium
//
//  Created by Rafael Rios on 9/16/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == textFieldProduct {
            if let product = textFieldProduct.text, textFieldProduct.text != "" {
                enableDisableASaveClearButton()
                textFieldQuantity.becomeFirstResponder()
                
                if products.ifProductExists(productName: product) {
                    let product = products.getProduct(productName: product)
                    
                    setTextFieldQuantity(quantity: String(product!.quantity))
                    unhideButtonDelete()
                    setTitleSaveButtonToUpdate()
                }
            }
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        enableDisableASaveClearButton()
        self.textFieldDidEndEditing(textField)
        return true
    }
    
}

