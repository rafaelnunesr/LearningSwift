//
//  Item.swift
//  Renter
//
//  Created by Rafael Rios on 9/22/20.
//

import Foundation
import UIKit

class Item: ItemProtocol {
    var name: String
    var itemCode: String
    
    init(name: String, itemCode: String) {
        self.name = name
        self.itemCode = itemCode
    }
    
    func rent() -> String {
        
        return "You should modify this function according to subclass needs"
    }
}
