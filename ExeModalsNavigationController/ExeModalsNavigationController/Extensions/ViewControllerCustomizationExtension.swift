//
//  ViewControllerCustomizationExtension.swift
//  ExeModalsNavigationController
//
//  Created by Rafael Rios on 9/21/20.
//

import Foundation
import UIKit

extension ViewController: ViewControllerProtocol {
    
    func setupButtons(collectionButtons: [UIButton]) {
        let setupApplicationButtons = SetupButtons()
        setupApplicationButtons.setupButtons(collectionButtons: myViewsButtons)
    }
    
    
}
