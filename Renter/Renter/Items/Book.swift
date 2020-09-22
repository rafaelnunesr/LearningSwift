//
//  Books.swift
//  Renter
//
//  Created by Rafael Rios on 9/22/20.
//

import Foundation
import UIKit

class Book: Item {
    var quantityPages: Int
    var maxDaysRent: Int = 15
    
    init(name: String, itemCode: String, quantityPages: Int) {
        self.quantityPages = quantityPages
        
        super.init(name: name, itemCode: itemCode)
    }
    
    override func rent() -> String {
        return "This book should be returned within \(maxDaysRent) days."
    }
}
