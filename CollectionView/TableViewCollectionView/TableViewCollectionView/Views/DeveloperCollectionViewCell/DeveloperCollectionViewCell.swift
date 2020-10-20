//
//  DeveloperCollectionViewCell.swift
//  TableViewCollectionView
//
//  Created by Rafael Nunes Rios on 10/19/20.
//

import UIKit

class DeveloperCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var developerImage: UIImageView!
    @IBOutlet weak var developerName: UILabel!
    
    static var identifier: String = "DeveloperCollectionViewCell"
    
    var developer: Developer?
    
    static func nib() -> UINib {
        return UINib(nibName: DeveloperCollectionViewCell.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell() {
        if let developer = developer {
            developerImage.image = UIImage(named: developer.photo)
            developerName.text = developer.name
        }
    }

}
