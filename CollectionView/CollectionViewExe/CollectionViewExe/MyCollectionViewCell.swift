//
//  MyCollectionViewCell.swift
//  CollectionViewExe
//
//  Created by Rafael Nunes Rios on 10/15/20.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    static var identifier = "MyCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
    
    @IBOutlet weak var imageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        setupImage()
        
    }
    
    func setupImage() {
        imageView.image = UIImage(named: "dog.jpeg")
    }

}
