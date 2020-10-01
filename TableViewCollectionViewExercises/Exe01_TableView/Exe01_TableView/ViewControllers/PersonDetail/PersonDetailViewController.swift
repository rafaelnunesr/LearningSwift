//
//  PersonDetailViewController.swift
//  Exe01_TableView
//
//  Created by Rafael Rios on 9/30/20.
//

import UIKit

class PersonDetailViewController: UIViewController {

    @IBOutlet weak var closeButton: UIButton!
    
    @IBOutlet weak var profilePhoto: UIImageView!
    
    @IBOutlet weak var textLabelPersonName: UILabel!
    @IBOutlet weak var textFieldPersonResponsability: UILabel!
    @IBOutlet weak var textFieldPersonEmail: UILabel!
    
    var person: Person?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        setup()
    }
    
    
    func setup() {
        
        if let person = person {
            setImage(photo: person.photo)
            setLabelName(name: person.name)
            setLabelResponsability(responsability: person.responsability)
            setLabelEmail(email: person.email)
        }
    }
    
    private func setImage(photo: String) {
        
        profilePhoto.image = UIImage(named: photo)
        profilePhoto.layer.cornerRadius = 30
        profilePhoto.clipsToBounds = true
        profilePhoto.layer.masksToBounds = true
        profilePhoto.layer.borderColor = UIColor.white.cgColor
        profilePhoto.layer.borderWidth = 1
    }
    
    private func setLabelName(name: String) {
        textLabelPersonName.setBold()
        textLabelPersonName.setTextSize(size: 30)
        textLabelPersonName.textAlignment = .center
        textLabelPersonName.text = name
    }
    
    private func setLabelResponsability(responsability: String) {
        textFieldPersonResponsability.setTextSize(size: 20)
        textFieldPersonResponsability.backgroundColor = UIColor(red: 1.00, green: 0.79, blue: 0.04, alpha: 0.30)
        textFieldPersonResponsability.textAlignment = .center
        textFieldPersonResponsability.text = responsability
    }
    
    private func setLabelEmail(email: String) {
        textFieldPersonEmail.setTextSize(size: 17)
        textFieldPersonEmail.setItalic()
        textFieldPersonEmail.textColor = .gray
        textFieldPersonEmail.textAlignment = .center
        textFieldPersonEmail.text = email
    }
    

    @IBAction func actionCloseButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
