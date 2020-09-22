//
//  ViewControllerCustomizationExtension.swift
//  ExeModalsNavigationController
//
//  Created by Rafael Rios on 9/21/20.
//

import Foundation
import UIKit

extension ViewController {

    func setupButtons(collectionButtons: [UIButton]) {
        for button in collectionButtons {
            
            let colorName: [Double] = getRandomColor()
            let color: UIColor = getUIColorObject(color: colorName)
            
            button.setBackgroundColorButton(color: color)
            button.setCornerRadiusButton()
            button.setFontSize()
            button.setTextColorButton(color: UIColor(red: 0.12, green: 0.12, blue: 0.12, alpha: 1.0))
        }
    }
    
    private func getRandomColor() -> [Double] {
        let randomColor = Int.random(in: 0..<colors.count)
        let selectedColor = colors[randomColor]
        
        return selectedColor
    }
    
    private func getUIColorObject(color: [Double]) -> UIColor {
        
        let red: Double = color[0]
        let green: Double = color[1]
        let blue: Double = color[2]
        
        return UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1.0)
    }

    
}
