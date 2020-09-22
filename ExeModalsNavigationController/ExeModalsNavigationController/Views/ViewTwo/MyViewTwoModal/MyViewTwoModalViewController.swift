//
//  MyViewTwoModalViewController.swift
//  ExeModalsNavigationController
//
//  Created by Rafael Rios on 9/21/20.
//

import UIKit

class MyViewTwoModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func actionClose(_ sender: Any) {

        dismissModal(name: "MyViewTwoModal")
        
    }
    

}
