//
//  MainClass.swift
//  ExeModalsNavigationController
//
//  Created by Rafael Rios on 9/22/20.
//

import Foundation
import UIKit

class SetupButtons: SetupButtonsProtocol {
    
    var colors = [ [0.69, 0.81, 0.95],
                   [0.80, 1.0, 0.27],
                   [0.85, 0.36, 0.37],
                   [0.22, 0.63, 0.55],
                   [0.88, 0.53, 0.83],
                   [1.00, 0.69, 0.83]
                ]
    
    
    func setupButtons(collectionButtons: [UIButton]) {
        for button in collectionButtons {
            
            let colorName: [Double] = getRandomColor()
            let color: UIColor = getUIColorObject(color: colorName)
            
            button.setBackgroundColorButton(color: color)
            button.setTextColorButton(color: UIColor(red: 0.12, green: 0.12, blue: 0.12, alpha: 1.0))
            setupGeneralButton(button: button)
        }
    }
    
    func setupButtonClose(button: UIButton) {
        button.setBackgroundColorButton(color: UIColor.red)
        button.setTextColorButton(color: UIColor.white)
        setupGeneralButton(button: button)
    }
    
    private func setupGeneralButton(button: UIButton) {
        
        button.setCornerRadiusButton()
        button.setFontSize()

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
