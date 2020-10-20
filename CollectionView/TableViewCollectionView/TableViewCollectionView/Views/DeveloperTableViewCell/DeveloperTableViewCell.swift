//
//  DeveloperTableViewCell.swift
//  TableViewCollectionView
//
//  Created by Rafael Nunes Rios on 10/19/20.
//

import UIKit

class DeveloperTableViewCell: UITableViewCell {
    
    static var identifier: String = "DeveloperTableViewCell"
    
    @IBOutlet weak var developerCollectionViewCell: UICollectionView!
    
    var developers = [Developer]()
    
    static func nib() -> UINib {
        return UINib(nibName: DeveloperTableViewCell.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
        developerCollectionViewCell.delegate = self
        developerCollectionViewCell.dataSource = self
        developerCollectionViewCell.register(DeveloperCollectionViewCell.nib(), forCellWithReuseIdentifier: DeveloperCollectionViewCell.identifier)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

extension DeveloperTableViewCell: UICollectionViewDelegate {
    
}

extension DeveloperTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return developers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DeveloperCollectionViewCell.identifier, for: indexPath) as! DeveloperCollectionViewCell
        
        cell.developer = developers[indexPath.row]
        cell.setupCell()
        
        return cell
        
    }
}
