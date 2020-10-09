//
//  ProdutoTableViewCell.swift
//  LojaVirtual
//
//  Created by Rafael Nunes Rios on 10/7/20.
//  Copyright © 2020 Rodrigo de Sousa Santos. All rights reserved.
//

import UIKit

class ProdutoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var subTituloLabel: UILabel!

    @IBOutlet weak var imageProduto: UIImageView!
    
    func setup(produto: Produto?) {
        
        guard let _produto = produto else {return}
        
        self.tituloLabel.text = _produto.nome
        self.subTituloLabel.text = _produto.preco
        self.imageProduto.image = UIImage(named: _produto.categoria)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
