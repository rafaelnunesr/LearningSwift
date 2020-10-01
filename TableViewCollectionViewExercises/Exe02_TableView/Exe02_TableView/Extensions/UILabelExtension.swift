//
//  UILabelExtension.swift
//  Exe02_TableView
//
//  Created by Rafael Rios on 10/1/20.
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
    
    func setFontSize(size: CGFloat) {
        self.font = UIFont(name: self.font.fontName, size: size)
    }
}
