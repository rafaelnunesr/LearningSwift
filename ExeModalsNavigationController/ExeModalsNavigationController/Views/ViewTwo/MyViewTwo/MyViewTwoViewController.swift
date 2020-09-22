//
//  MyViewTwoViewController.swift
//  ExeModalsNavigationController
//
//  Created by Rafael Rios on 9/21/20.
//

import UIKit

class MyViewTwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "My View Two"
    }
    
    
    @IBAction func actionTwoViewModal(_ sender: Any) {
        
        presentModal(name: "MyViewTwoModal")
    }
    
    
    @IBAction func actionTwoViewPushed(_ sender: Any) {
        
        navegateTo(name: "MyViewTwoPushed")
        
    }
}

