//
//  DVD.swift
//  Renter
//
//  Created by Rafael Rios on 9/22/20.
//

import Foundation
import UIKit

class DVD: Item {
    var videoFormat: String
    var maxDaysRent: Int = 5
    
    init(name: String, itemCode: String, videoFormat: String) {
        self.videoFormat = videoFormat
        
        super.init(name: name, itemCode: itemCode)
    }
    
    override func rent() -> String {
        return "This DVD should be returned within \(maxDaysRent) days."
    }
}
