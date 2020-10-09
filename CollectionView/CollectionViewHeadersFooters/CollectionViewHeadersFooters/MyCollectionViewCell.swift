//
//  MyCollectionViewCell.swift
//  CollectionViewHeadersFooters
//
//  Created by Rafael Nunes Rios on 10/9/20.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "MyCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .link
    }

}
