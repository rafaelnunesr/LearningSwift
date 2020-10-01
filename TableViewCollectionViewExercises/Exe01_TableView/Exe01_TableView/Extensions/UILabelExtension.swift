//
//  UILabelExtension.swift
//  Exe01_TableView
//
//  Created by Rafael Rios on 9/30/20.
//

import Foundation
import UIKit

extension UILabel {
    
    func setBold() {
        self.font = UIFont.boldSystemFont(ofSize: self.font.pointSize)
    }
    
    func setItalic() {
        self.font = UIFont.italicSystemFont(ofSize: self.font.pointSize)
    }
    
    func setTextSize(size: CGFloat) {
        self.font = UIFont(name: self.font.fontName, size: size)
    }
    
}
