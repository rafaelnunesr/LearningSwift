//
//  ViewControllerExtension.swift
//  Hipodromo
//
//  Created by Rafael Rios on 9/22/20.
//

import Foundation
import UIKit

extension UIViewController: UIViewControllerProtocol {
    
    func presentModal(modalName: String){
        
        if let modalName = UIStoryboard(name: modalName, bundle: nil).instantiateInitialViewController() {
            present(modalName, animated: true, completion: nil)
        }
        
    }
    
    func dismissModal(modalName: String) {
        
        if UIStoryboard(name: modalName, bundle: nil).instantiateInitialViewController() != nil {
            
            dismiss(animated: true, completion: nil)
        }
    }
    
}
