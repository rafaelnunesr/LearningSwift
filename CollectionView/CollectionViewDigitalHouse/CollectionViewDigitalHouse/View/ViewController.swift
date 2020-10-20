//
//  ViewController.swift
//  CollectionViewDigitalHouse
//
//  Created by Rafael Nunes Rios on 10/16/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myCollection: UICollectionView!
    
    var arrayEventos: [Evento] = [Evento(nome: "Evento01", backgroundNameImage: "image01.jpg"),
                                  Evento(nome: "Evento02", backgroundNameImage: "image02.jpg"),
                                  Evento(nome: "Evento03", backgroundNameImage: "image03.jpg"),
                                  Evento(nome: "Evento04", backgroundNameImage: "image04.jpg"),]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myCollection.register(UINib(nibName: "MyCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MyCollectionViewCell")
        
        self.myCollection.delegate = self
        self.myCollection.dataSource = self
        
    }


}

extension ViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(self.arrayEventos[indexPath.row])
        
        //self.performSegue(withIdentifier: "DetalheViewController", sender: self.arrayEventos[indexPath.row])
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let evento: Evento?  = sender as? Evento
        let vc = segue.destination as? DetalheViewController
        vc?.evento = evento
    }
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayEventos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: MyCollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as? MyCollectionViewCell
        
        cell?.setup(evento: arrayEventos[indexPath.row])
        cell?.delegate = self
        
        return cell ?? UICollectionViewCell()
        
    }
}

extension ViewController: MyCollectionViewCellDelegate {
    func goDetailEvent(value: Evento?) {
        print("ViewController ===> MyCollectionViewdelegate ==> goDetailEvent ==> goDetailEvent==============>")
        
        self.performSegue(withIdentifier: "DetalheViewController", sender: value)
    }
    
    
}
