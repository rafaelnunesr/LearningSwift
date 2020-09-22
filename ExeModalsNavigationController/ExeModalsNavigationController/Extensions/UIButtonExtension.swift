//
//  UIButtonExtension.swift
//  ExeModalsNavigationController
//
//  Created by Rafael Rios on 9/21/20.
//

import Foundation
import UIKit

extension UIButton {
    
    func setBackgroundColorButton(color: UIColor) {
        self.backgroundColor = color
    }
    
    func setCornerRadiusButton(_ radius: CGFloat = 8) {
        self.layer.cornerRadius = radius
    }
    
    func setFontSize(_ fontSize: CGFloat = 50, _ fontFamily: String = "System") {
        self.titleLabel?.font =  UIFont(name: fontFamily, size: fontSize)
    }
    
    func setTextColorButton(color: UIColor) {
        self.setTitleColor(color, for: .normal)
    }

}
