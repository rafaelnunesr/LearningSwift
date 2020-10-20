//
//  MyCollectionViewCell.swift
//  CollectionViewDigitalHouse
//
//  Created by Rafael Nunes Rios on 10/16/20.
//

import UIKit

protocol MyCollectionViewCellDelegate: class {
    
    func goDetailEvent(value: Evento?)
    
}

class MyCollectionViewCell: UICollectionViewCell {
    
    weak var delegate: MyCollectionViewCellDelegate?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    private var currrentEvent: Evento?

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    @IBAction func tappedButton(_ sender: UIButton) {
        print("MyCollectionCell ==> tapped button")
        self.delegate?.goDetailEvent(value: self.currrentEvent)
        self.titleLabel.textColor = .red
    }
    
    func setup(evento: Evento) {
        self.currrentEvent = evento
        self.titleLabel.text = evento.nome
        self.backgroundImage.image = UIImage(named: evento.backgroundNameImage ?? "")
    }
}
