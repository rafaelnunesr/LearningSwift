//
//  PeopleViewControllerUITableViewDelegate.swift
//  Exe01_TableView
//
//  Created by Rafael Rios on 10/1/20.
//

import Foundation
import UIKit

extension PeopleViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let personDetail = UIStoryboard(name: "PersonDetail", bundle: nil).instantiateInitialViewController() as? PersonDetailViewController {
            
            personDetail.person = arrayPeople[indexPath.row]
            
            present(personDetail, animated: true, completion: nil)
            
        }
        
    }
    
}
