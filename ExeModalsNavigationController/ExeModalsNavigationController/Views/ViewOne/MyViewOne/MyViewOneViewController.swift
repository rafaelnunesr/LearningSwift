//
//  MyViewOneViewController.swift
//  ExeModalsNavigationController
//
//  Created by Rafael Rios on 9/22/20.
//

import UIKit

class MyViewOneViewController: UIViewController {

    @IBOutlet var myViewButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SetupButtons().setupButtons(collectionButtons: myViewButtons)
        title = "My View One"
    }
    
    @IBAction func actionViewOneModal(_ sender: Any) {
        presentModal(name: "MyViewOneModal")
    }
    

    @IBAction func actionViewOnePushed(_ sender: Any) {
        navigateTo(name: "MyViewOnePushed")
    }
}
