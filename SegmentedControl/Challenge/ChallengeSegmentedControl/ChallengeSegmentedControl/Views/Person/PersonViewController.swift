//
//  PersonViewController.swift
//  ChallengeSegmentedControl
//
//  Created by Rafael Nunes Rios on 10/20/20.
//

import UIKit

class PersonViewController: UIViewController {
    
    @IBOutlet weak var personImageView: UIImageView!
    @IBOutlet weak var personName: UILabel!
    
    
    static var identifier = "PersonViewController"
    var person: Person?

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        if let person = person {
            personImageView.image = UIImage(named: person.photoName)
            personName.text = person.name
        }
    }
    
}
