//
//  ViewControllerUITableViewDataSource.swift
//  FastEmporium
//
//  Created by Rafael Rios on 9/26/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.arrayProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        tableView(tableView, numberOfRowsInSection: products.arrayProducts.count)
        
        let product = products.arrayProducts[indexPath.row].name
        let quantity = products.arrayProducts[indexPath.row].quantity
        
        cell.textLabel?.text = product + " X " + String(quantity)
        
        return cell
    }
    
    
}
