//
//  MyViewTwoModalViewController.swift
//  ExeModalsNavigationController
//
//  Created by Rafael Rios on 9/21/20.
//

import UIKit

class MyViewTwoModalViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var closeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SetupButtons().setupButtonClose(button: closeButton)
        SetupLabels().setupLabels(label: textLabel)
    }
    

    @IBAction func actionClose(_ sender: Any) {

        dismissModal(name: "MyViewTwoModal")
        
    }
    

}
