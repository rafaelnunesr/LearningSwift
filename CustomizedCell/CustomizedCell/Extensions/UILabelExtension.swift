//
//  UITextFieldExtension.swift
//  CustumizedCell
//
//  Created by Rafael Rios on 9/28/20.
//

import Foundation
import UIKit

extension UILabel {
    
    func transformTextToBold(text: String) {
        self.font = UIFont.systemFont(ofSize: 20, weight: .bold)
    }
    
    func transformTextItalic(text: String) {
        self.font = UIFont.italicSystemFont(ofSize: 18)
    }
    
    func colorText(color: UIColor) {
        self.textColor = color
    }
    
}
