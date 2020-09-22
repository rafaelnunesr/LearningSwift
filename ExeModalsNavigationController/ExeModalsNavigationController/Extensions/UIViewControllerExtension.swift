//
//  UIViewControllerExtension.swift
//  ExeModalsNavigationController
//
//  Created by Rafael Rios on 9/21/20.
//

import Foundation
import UIKit

extension UIViewController: UIViewControllerProtocol  {
    
    func presentModal(name: String) {
        
        if let viewModal = UIStoryboard(name: name, bundle: nil).instantiateInitialViewController() {
            
            present(viewModal, animated: true, completion: nil)
            
        }
    }
    
    func dismissModal(name: String) {
        
        if UIStoryboard(name: name, bundle: nil).instantiateInitialViewController() != nil {
            
            dismiss(animated: true, completion: nil)
        }
        
    }
    
    func navigateTo(name: String) {
        
        if let view = UIStoryboard(name: name, bundle: nil).instantiateInitialViewController() {
            
            navigationController?.pushViewController(view, animated: true)
        }
        
    }
 
}
