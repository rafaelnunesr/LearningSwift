//
//  Product.swift
//  SuperShop
//
//  Created by Rafael Rios on 9/29/20.
//

import Foundation
import UIKit

class Product {
    var productName: String
    var productPhoto: String
    var expirationDate: String?
    var price: Double
    
    init(productName: String, productPhoto: String, expirationDate: String?, price: Double) {
        self.productName = productName
        self.productPhoto = productPhoto
        self.expirationDate = expirationDate
        self.price = price
    }
}
