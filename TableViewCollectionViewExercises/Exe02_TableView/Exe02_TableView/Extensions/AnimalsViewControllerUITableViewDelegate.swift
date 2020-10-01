//
//  AnimalsViewControllerUITableViewDelegate.swift
//  Exe02_TableView
//
//  Created by Rafael Rios on 10/1/20.
//

import Foundation
import UIKit

extension AnimalsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let animalView = UIStoryboard(name: "Animal", bundle: nil).instantiateInitialViewController() as? AnimalViewController {
            
            animalView.animal = arrayAnimals[indexPath.row]
            
            present(animalView, animated: true, completion: nil)
        }
    }
}
