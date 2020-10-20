//
//  ViewController.swift
//  SegmentedControl
//
//  Created by Rafael Nunes Rios on 10/20/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func mySegmentedControl(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            print("selecionou o primeiro")
        case 1:
            print("selecionou o segundo")
        default:
            break
        }
        
    }
}

