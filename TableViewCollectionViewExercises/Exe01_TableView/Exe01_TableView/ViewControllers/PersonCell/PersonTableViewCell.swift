//
//  PersonTableViewCell.swift
//  Exe01_TableView
//
//  Created by Rafael Rios on 9/30/20.
//

import UIKit

class PersonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageViewPerson: UIImageView!
    
    @IBOutlet weak var textLabelPersonName: UILabel!
    @IBOutlet weak var textLabelPersonResponsability: UILabel!
    @IBOutlet weak var textLabelPersonEmail: UILabel!
    
    
    func setup(person: Person) {
        
        setImage(photo: person.photo)
        setLabelName(name: person.name)
        setLabelResponsability(responsability: person.responsability)
        setLabelEmail(email: person.email)
        
    }
    
    private func setImage(photo: String) {
        
        imageViewPerson.image = UIImage(named: photo)
        imageViewPerson.layer.cornerRadius = imageViewPerson.frame.size.width / 2
        imageViewPerson.clipsToBounds = true
        imageViewPerson.layer.masksToBounds = true
        imageViewPerson.layer.borderColor = UIColor.white.cgColor
        imageViewPerson.layer.borderWidth = 1
    }
    
    private func setLabelResponsability(responsability: String) {
        textLabelPersonResponsability.text = responsability
    }
    
    
    private func setLabelName(name: String) {
        
        textLabelPersonName.setTextSize(size: 20)
        textLabelPersonName.setBold()
        textLabelPersonName.text = name
    }
    
    private func setLabelEmail(email: String) {
        
        textLabelPersonEmail.setItalic()
        textLabelPersonEmail.textColor = UIColor.gray
        textLabelPersonEmail.text = email
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}

