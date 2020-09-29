//
//  UIButtonExtension.swift
//  SuperShop
//
//  Created by Rafael Rios on 9/29/20.
//

import Foundation
import UIKit

extension UIButton {
    func setBackgroundButton(color: UIColor) {
        self.backgroundColor = color
    }
    
    func setRadiusCornerButtons(cornerRadius: CGFloat = 4) {
        self.layer.cornerRadius = cornerRadius
    }
    
    func setTextColorButton(color: UIColor = .white) {
        self.tintColor = color
    }
    
    func setFontWeightButton() {
        self.titleLabel?.font = UIFont.systemFont(ofSize: 15.0, weight: .bold)
    }
}
