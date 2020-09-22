//
//  MyViewThreeViewController.swift
//  ExeModalsNavigationController
//
//  Created by Rafael Rios on 9/22/20.
//

import UIKit

class MyViewThreeViewController: UIViewController {

    @IBOutlet var myViewButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SetupButtons().setupButtons(collectionButtons: myViewButtons)
        
        title = "My View Three"

    }
    
    @IBAction func actionViewThreeModal(_ sender: Any) {
        presentModal(name: "MyViewThreeModal")
    }
    
    @IBAction func actionViewThreePushed(_ sender: Any) {
        navigateTo(name: "MyViewThreePushed")
    }
}
