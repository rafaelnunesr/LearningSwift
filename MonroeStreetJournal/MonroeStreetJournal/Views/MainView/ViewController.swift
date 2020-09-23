//
//  ViewController.swift
//  MonroeStreetJournal
//
//  Created by Rafael Rios on 9/22/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textLabel: UILabel!
  
    
    @IBOutlet var subscribeButton: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    
    @IBAction func subscribePerson(_ sender: Any) {
        presentModal(modalName: "PersonModal")
    }
    
    
    @IBAction func subscribeCompany(_ sender: Any) {
        presentModal(modalName: "CompanyModal")
    }
    
}

