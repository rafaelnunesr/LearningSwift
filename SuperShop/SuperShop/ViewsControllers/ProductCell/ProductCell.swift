//
//  ProductCell.swift
//  SuperShop
//
//  Created by Rafael Rios on 9/29/20.
//

import UIKit

class ProductCell: UITableViewCell {
    
    
    @IBOutlet weak var imageViewProductPhoto: UIImageView!

    @IBOutlet weak var textLabelProductName: UILabel!
    @IBOutlet weak var textLabelProductPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setup(product: Product) {
        imageViewProductPhoto.image = UIImage(named: product.productPhoto)
        
        textLabelProductName.text = product.productName
        textLabelProductPrice.text = "R$ " + String(product.price)
    }

}
