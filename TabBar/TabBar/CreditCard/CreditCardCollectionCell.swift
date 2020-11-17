//
//  CreditCardCollectionCell.swift
//  TabBar
//
//  Created by Rafael Nunes Rios on 10/26/20.
//

import UIKit

class CreditCardCollectionCell: UICollectionViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var flagImage: UIImageView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var lineView: UIView!
    @IBOutlet weak var cardBackgroundView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setup(value: CartoesElement?) {
          
          if let _value = value {
              
              self.nameLabel.text = _value.nome
              self.numberLabel.text = _value.numero
              self.dateLabel.text = _value.data
              self.flagImage.image = UIImage(named: _value.bandeira)
              
              self.cardBackgroundView.image = UIImage(named: "fundo-visa")
              self.cardBackgroundView.layer.cornerRadius = 4
              
              self.containerView.layer.cornerRadius = 4
              if _value.bandeira == Flag.mastercard.rawValue {
                  self.containerView.backgroundColor = .black
                  self.nameLabel.textColor = .lightGray
                  self.numberLabel.textColor = .lightGray
                  self.dateLabel.textColor = .lightGray
                  self.lineView.backgroundColor = .lightGray
                  self.cardBackgroundView.image = UIImage(named: "fundo-master")
                  
              }
          }
          
      }
    
}
