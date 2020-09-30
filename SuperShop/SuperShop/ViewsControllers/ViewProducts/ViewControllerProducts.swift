//
//  ViewControllerProducts.swift
//  SuperShop
//
//  Created by Rafael Rios on 9/29/20.
//

import UIKit

class ViewControllerProducts: UIViewController {
    
    @IBOutlet weak var tableViewProducts: UITableView!
    
    var products = Products()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewProducts.delegate = self
        tableViewProducts.dataSource = self
        
        hardInitProducts()

    }
    
    func hardInitProducts() {
        products.arrayProducts.append(Product(productName: "Knife X Model",
                                              productPhoto: "default.png",
                                              expirationDate: nil,
                                              price: 22.35))
        
        products.arrayProducts.append(Product(productName: "Cereal Fruits",
                                              productPhoto: "default.png",
                                              expirationDate: "06/2021",
                                              price: 6.88))
        
        products.arrayProducts.append(Product(productName: "Chips Potato",
                                              productPhoto: "default.png",
                                              expirationDate: "12/2020",
                                              price: 4.79))
        
        products.arrayProducts.append(Product(productName: "Soda Lemon",
                                              productPhoto: "default.png",
                                              expirationDate: "07/2021",
                                              price: 1.99))
        
    }
    
}

extension ViewControllerProducts: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ViewControllerProducts: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.arrayProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductCell
        
        cell.setup(product: products.arrayProducts[indexPath.row])
        
        return cell
    }
    
    
}

