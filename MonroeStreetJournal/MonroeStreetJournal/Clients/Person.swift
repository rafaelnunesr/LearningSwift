//
//  Person.swift
//  MonroeStreetJournal
//
//  Created by Rafael Rios on 9/22/20.
//

import Foundation
import UIKit

class Person: ClientProtocol {
    var name: String
    var rg: String
    var address: String
    
    init(name: String, rg: String, address: String) {
        self.name = name
        self.rg = rg
        self.address = address
    }
    
    func showMessage() {
        
    }
}
