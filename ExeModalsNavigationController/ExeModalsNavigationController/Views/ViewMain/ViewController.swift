//
//  ViewController.swift
//  ExeModalsNavigationController
//
//  Created by Rafael Rios on 9/21/20.
//

import UIKit

class ViewController: UIViewController {
    
    var colors = [ [0.69, 0.81, 0.95],
                   [0.80, 1.0, 0.27],
                   [0.85, 0.36, 0.37],
                   [0.22, 0.63, 0.55],
                   [0.88, 0.53, 0.83],
                   [1.00, 0.69, 0.83]
                ]

    @IBOutlet var myViewsButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButtons(collectionButtons: myViewsButtons)
        title = "Home Screen"
    }
    
    
    @IBAction func actionMyViewOne(_ sender: Any) {
        
        navegateTo(name: "MyViewOne")
    }
    
    
    @IBAction func actionMyViewOneModal(_ sender: Any) {
        
        presentModal(name: "MyViewOneModal")
        
    }
    
    @IBAction func actionMyViewOnePushed(_ sender: Any) {
        
        navegateTo(name: "MyViewOnePushed")
        
    }
    
    
    @IBAction func actionMyViewTwo(_ sender: Any) {
        
        navegateTo(name: "MyViewTwo")
    }
    
    
    @IBAction func actionMyViewTwoModal(_ sender: Any) {
        
        presentModal(name: "MyViewTwoModal")
        
    }
    
    
    @IBAction func actionMyViewTwoPushed(_ sender: Any) {
        
        navegateTo(name: "MyViewTwoPushed")
        
    }
    
    
    @IBAction func actionMyViewThree(_ sender: Any) {
    }
    
    
    @IBAction func actionMyViewThreeModal(_ sender: Any) {
    }
    
    @IBAction func actionMyViewThreePushed(_ sender: Any) {
    }
}

