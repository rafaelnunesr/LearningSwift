//
//  ViewControllerTextFieldExtension.swift
//  FastEmporium
//
//  Created by Rafael Rios on 9/16/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {
    
    func ifTextFieldProductHasData() -> Bool {
        if let _ = textFieldProduct.text, textFieldProduct.text != "" {
            return true
        }
        return false
    }
    
    func getTextFieldProductName() -> String {
        return textFieldProduct.text!
    }
    
    func ifTextFieldQuantityHasData() -> Bool {
        if let _ = textFieldQuantity.text, textFieldQuantity.text != "" {
            return true
        }
        return false
    }
    
    func getTextFieldQuantity() -> String {
        return textFieldQuantity.text!
    }
    
    func setTextFieldQuantity(quantity: String) {
        textFieldQuantity.text = quantity
    }
    
}
