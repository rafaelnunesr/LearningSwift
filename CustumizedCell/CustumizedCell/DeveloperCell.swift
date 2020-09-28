//
//  DeveloperCell.swift
//  CustumizedCell
//
//  Created by Rafael Rios on 9/28/20.
//

import UIKit

class DeveloperCell: UITableViewCell {
    
    @IBOutlet weak var imageViewDeveloperPhoto: UIImageView!
    @IBOutlet weak var textLabelDeveloperName: UILabel!
    @IBOutlet weak var textLabelDeveloperEmail: UILabel!
    
    func setup(developer: Developer) {
        
        imageViewDeveloperPhoto.image = UIImage(named: developer.photo)
        textLabelDeveloperName.transformTextToBold(text: developer.name)
        textLabelDeveloperName.text = developer.name
        textLabelDeveloperEmail.text = developer.email
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}

extension UILabel {
    
    func transformTextToBold(text: String) {
        self.font = UIFont.systemFont(ofSize: 20, weight: .bold)
    }
    
}
