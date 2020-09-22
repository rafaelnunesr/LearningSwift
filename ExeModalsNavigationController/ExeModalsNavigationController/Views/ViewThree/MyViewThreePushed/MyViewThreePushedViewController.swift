//
//  MyViewThreePushedViewController.swift
//  ExeModalsNavigationController
//
//  Created by Rafael Rios on 9/22/20.
//

import UIKit

class MyViewThreePushedViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SetupLabels().setupLabels(label: textLabel)
    }
    

}
