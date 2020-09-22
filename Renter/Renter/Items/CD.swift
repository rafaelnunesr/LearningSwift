//
//  Cd.swift
//  Renter
//
//  Created by Rafael Rios on 9/22/20.
//

import Foundation
import UIKit

class CD: Item {
    var singer: String
    var maxDaysRent: Int = 3
    
    init(name: String, itemCode: String, singer: String) {
        self.singer = singer
        
        super.init(name: name, itemCode: itemCode)
    }
    
    override func rent() -> String {
        return "This CD should be returned within \(maxDaysRent) days."
    }
}
