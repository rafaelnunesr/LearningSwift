//
//  UITextFieldExtension.swift
//  exe02Calculadora
//
//  Created by Rafael Rios on 9/19/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    func isEmpty() -> Bool {
        if text == nil || text!.isEmpty {
            return true
        }
        
        return false
    }
}
