//
//  PeopleViewControllerUITableViewDataSource.swift
//  Exe01_TableView
//
//  Created by Rafael Rios on 10/1/20.
//

import Foundation
import UIKit

extension PeopleViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayPeople.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonTableViewCell", for: indexPath) as! PersonTableViewCell
        
        cell.setup(person: arrayPeople[indexPath.row])
        
        return cell
        
    }
    
    
}
