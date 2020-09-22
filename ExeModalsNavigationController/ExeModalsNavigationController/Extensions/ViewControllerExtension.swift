//
//  ViewControllerExtension.swift
//  ExeModalsNavigationController
//
//  Created by Rafael Rios on 9/22/20.
//

import Foundation
import UIKit

extension ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButtons(collectionButtons: myViewsButtons)
        title = "Home Screen"
    }
    
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
    
    func navegateTo(name: String) {
        
        if let view = UIStoryboard(name: name, bundle: nil).instantiateInitialViewController() {
            
            navigationController?.pushViewController(view, animated: true)
        }
        
    }
    
}
