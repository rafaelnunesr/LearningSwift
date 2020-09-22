//
//  UIButtonProtocol.swift
//  Renter
//
//  Created by Rafael Rios on 9/22/20.
//

import Foundation
import UIKit

protocol UIButtonProtocol {
    
    func setBackgroundColorButton(color: UIColor)
    
    func setCornerRadiusButton(_ radius: CGFloat)
    func setFontSize(_ fontSize: CGFloat, _ fontFamily: String)
    func setTextColorButton(color: UIColor)

}
