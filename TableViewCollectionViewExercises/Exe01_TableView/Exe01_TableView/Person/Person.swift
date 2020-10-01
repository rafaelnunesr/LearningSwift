//
//  Person.swift
//  Exe01_TableView
//
//  Created by Rafael Rios on 9/30/20.
//

import Foundation
import UIKit

class Person {
    var photo: String
    var name: String
    var responsability: String
    var email: String
    
    init(photo: String, name: String, responsability: String, email: String) {
        self.photo = photo
        self.name = name
        self.responsability = responsability
        self.email = email
    }
}


