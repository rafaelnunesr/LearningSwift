//
//  StoryCollectionViewCell.swift
//  InstagramCollectionViewTableView
//
//  Created by Rafael Nunes Rios on 10/15/20.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    
    static var identifier = "StoryCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "StoryCollectionViewCell", bundle: nil)
    }
    
    @IBOutlet weak var imageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupImage(photo: String) {
        imageView.image = UIImage(named: photo)
        imageView.layer.cornerRadius = imageView.frame.size.width / 2
        imageView.layer.borderWidth = 3.0
        imageView.layer.borderColor = CGColor(red: 1.00, green: 0.48, blue: 0.89, alpha: 1.00)
    }

}
