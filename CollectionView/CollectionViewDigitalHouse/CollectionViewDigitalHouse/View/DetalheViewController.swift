//
//  DetalheViewController.swift
//  CollectionViewDigitalHouse
//
//  Created by Rafael Nunes Rios on 10/19/20.
//

import UIKit

class DetalheViewController: UIViewController {
    
    @IBOutlet weak var eventoImageView: UIImageView!
    @IBOutlet weak var eventoDetalheView: UILabel!

    var evento: Evento?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.eventoImageView.image = UIImage(named: self.evento?.backgroundNameImage ?? "")
        self.eventoDetalheView.text = self.evento?.nome
    }

}
