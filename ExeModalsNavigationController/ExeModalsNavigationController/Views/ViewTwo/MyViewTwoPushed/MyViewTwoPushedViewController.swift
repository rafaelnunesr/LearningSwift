//
//  MyViewTwoPushedViewController.swift
//  ExeModalsNavigationController
//
//  Created by Rafael Rios on 9/21/20.
//

import UIKit

class MyViewTwoPushedViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SetupLabels().setupLabels(label: textLabel)
    }
    


}
