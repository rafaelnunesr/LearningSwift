//
//  ViewController.swift
//  ExeModalsNavigationController
//
//  Created by Rafael Rios on 9/21/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myViewsButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SetupButtons().setupButtons(collectionButtons: myViewsButtons)
        title = "Home Screen"
    }
    
    
    @IBAction func actionMyViewOne(_ sender: Any) {
        navigateTo(name: "MyViewOne")
    }
    
    
    @IBAction func actionMyViewOneModal(_ sender: Any) {
        presentModal(name: "MyViewOneModal")
    }
    
    @IBAction func actionMyViewOnePushed(_ sender: Any) {
        navigateTo(name: "MyViewOnePushed")
    }
    
    
    @IBAction func actionMyViewTwo(_ sender: Any) {
        navigateTo(name: "MyViewTwo")
    }
    
    
    @IBAction func actionMyViewTwoModal(_ sender: Any) {
        presentModal(name: "MyViewTwoModal")
    }
    
    
    @IBAction func actionMyViewTwoPushed(_ sender: Any) {
        navigateTo(name: "MyViewTwoPushed")
    }
    
    
    @IBAction func actionMyViewThree(_ sender: Any) {
        navigateTo(name: "MyViewThree")
    }
    
    
    @IBAction func actionMyViewThreeModal(_ sender: Any) {
        presentModal(name: "MyViewThreeModal")
    }
    
    @IBAction func actionMyViewThreePushed(_ sender: Any) {
        navigateTo(name: "MyViewThreePushed")
    }
}

