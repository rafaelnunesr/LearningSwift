//
//  ViewControllerUITableViewDelegate.swift
//  FastEmporium
//
//  Created by Rafael Rios on 9/26/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: UITableViewDelegate {
     
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        tableView.reloadData()
        return nil
        
    }
    
     
}
