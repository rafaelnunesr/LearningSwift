//
//  ViewController.swift
//  CollectionViewExe
//
//  Created by Rafael Nunes Rios on 10/15/20.
//

import UIKit

class ViewController: UIViewController {
    
    var arrayAnimals = [Animal]()

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        
        arrayAnimals.append(Animal(specie: "Dog", color: .brown))
        arrayAnimals.append(Animal(specie: "Cat", color: .white))
        
    }

}

extension ViewController: UICollectionViewDelegate {
    
}

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayAnimals.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as! MyCollectionViewCell
        
        return cell
        
    }
    
}
