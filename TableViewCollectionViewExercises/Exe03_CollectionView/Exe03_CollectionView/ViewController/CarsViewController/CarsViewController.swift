//
//  ViewController.swift 
//  Exe03_CollectionView
//
//  Created by Rafael Rios on 10/1/20.
//

import UIKit

class CarsViewController: UIViewController {

    @IBOutlet weak var collectionViewCars: UICollectionView!
    
    var arrayCars = [Car]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionViewCars.delegate = self
        collectionViewCars.dataSource = self
    }

}

extension CarsViewController: UICollectionViewDelegate {
    
}

extension CarsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCars.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let collectionView = collectionView.dequeueReusableCell(withReuseIdentifier: "CarCollectionViewCell", for: indexPath)
        
        
        return collectionView
        
    }
    
    
}
