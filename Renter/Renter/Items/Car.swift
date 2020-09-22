//
//  Car.swift
//  Renter
//
//  Created by Rafael Rios on 9/22/20.
//

import Foundation
import UIKit

class Car: Item {
    var carPlate: String
    var maxDaysRent: Int = 7
    
    init(name: String, itemCode: String, carPlate: String) {
        self.carPlate = carPlate
        
        super.init(name: name, itemCode: itemCode)
    }
    
    override func rent() -> String {
        return "This car should be returned within \(maxDaysRent) days."
    }
}
