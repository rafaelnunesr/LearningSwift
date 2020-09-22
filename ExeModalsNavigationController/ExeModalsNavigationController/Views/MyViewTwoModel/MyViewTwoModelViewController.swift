//
//  MyViewTwoModelViewController.swift
//  ExeModalsNavigationController
//
//  Created by Rafael Rios on 9/21/20.
//

import UIKit

class MyViewTwoModelViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

   
    @IBAction func actionClose(_ sender: Any) {
        
        if let viewModal = UIStoryboard(name: "MyViewTwoModel", bundle: nil).instantiateInitialViewController() as? MyViewTwoModelViewController {
            
            dismiss(animated: true, completion: nil)
        }
        
    }
    
}
