//
//  AnimalsViewControllerUITableViewDataSource.swift
//  Exe02_TableView
//
//  Created by Rafael Rios on 10/1/20.
//

import Foundation
import UIKit

extension AnimalsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayAnimals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalTableViewCell", for: indexPath) as! AnimalTableViewCell
        
        cell.animal = arrayAnimals[indexPath.row]
        cell.setup()
        
        return cell
        
    }
    
    
}
