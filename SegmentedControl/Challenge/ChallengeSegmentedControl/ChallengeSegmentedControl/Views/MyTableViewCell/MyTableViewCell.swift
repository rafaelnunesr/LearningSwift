//
//  MyTableViewCell.swift
//  ChallengeSegmentedControl
//
//  Created by Rafael Nunes Rios on 10/20/20.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    static var identifier = "MyTableViewCell"
    var person: Person?
    
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var nameTextLabel: UILabel!
    
    static func nib() -> UINib {
        return UINib(nibName: MyTableViewCell.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setup() {
        if let person = person {
            photo.image = UIImage(named: person.photoName)
            nameTextLabel.text = person.name
        }
    }
    
}
