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
        
        handleImageViewDeveloperPhoto(photoName: developer.photo)
        handleTextLabelDeveloperName(developerName: developer.name)
        handleTextLabelDeveloperEmail(developerEmail: developer.email)
        
    }
    
    private func handleImageViewDeveloperPhoto(photoName: String) {
        
        imageViewDeveloperPhoto.image = UIImage(named: photoName)
        imageViewDeveloperPhoto.layer.cornerRadius = 35
    }
    
    private func handleTextLabelDeveloperName(developerName: String) {
        
        textLabelDeveloperName.transformTextToBold(text: developerName)
        textLabelDeveloperName.text = developerName
    }

    
    private func handleTextLabelDeveloperEmail(developerEmail: String) {
        
        textLabelDeveloperEmail.transformTextItalic(text: developerEmail)
        textLabelDeveloperEmail.colorText(color: UIColor.gray)
        textLabelDeveloperEmail.text = developerEmail
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}


