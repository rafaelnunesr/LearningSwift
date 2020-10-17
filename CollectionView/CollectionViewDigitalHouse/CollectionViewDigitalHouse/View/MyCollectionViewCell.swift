//
//  MyCollectionViewCell.swift
//  CollectionViewDigitalHouse
//
//  Created by Rafael Nunes Rios on 10/16/20.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    
    @IBAction func tappedButton(_ sender: UIButton) {
        print("tapped")
    }
    
    func setup(evento: Evento) {
        self.titleLabel.text = evento.nome
        self.backgroundImage.image = UIImage(named: evento.backgroundNameImage ?? "")
    }
}
