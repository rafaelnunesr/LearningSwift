//
//  ViewControllerButtonsSettings.swift
//  FastEmporium
//
//  Created by Rafael Rios on 9/16/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {
    
    func hideButtonDelete() {
        buttonDelete.isHidden = true
    }
    
    func unhideButtonDelete() {
        buttonDelete.isHidden = false
    }
    
    func setTitleSaveButtonToUpdate() {
        buttonSave.setTitle("Update", for: .normal)
    }
    
    func setTitleSaveButtonToSave() {
        buttonSave.setTitle("Save", for: .normal)
    }
    
    func enableDisableASaveClearButton() {
        
        buttonSave.isEnabled = !buttonSave.isEnabled
        buttonClear.isEnabled = !buttonClear.isEnabled
        
        let ifButtonsAreEnable = buttonSave.isEnabled
        
        if ifButtonsAreEnable {
            upButtonOpacity()
        }else {
            downButtonOpacity()
        }
    }
    
    func downButtonOpacity() {
        buttonSave.alpha = 0.2
        buttonClear.alpha = 0.2
    }
    
    func upButtonOpacity() {
        buttonSave.alpha = 1.0
        buttonClear.alpha = 1.0
    }
    
}
