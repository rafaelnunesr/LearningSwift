//
//  DeveloperViewController.swift
//  ChallengeSegmentedControl
//
//  Created by Rafael Nunes Rios on 10/20/20.
//

import UIKit

class DeveloperViewController: UIViewController {
    
    @IBOutlet weak var developerImage: UIImageView!
    @IBOutlet weak var developerName: UILabel!
    
    var developer: Person?

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        if let developer = developer {
            developerImage.image = UIImage(named: developer.photoName)
            developerName.text = developer.name
        }
    }

}
