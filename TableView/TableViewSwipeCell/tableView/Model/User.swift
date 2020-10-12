//
//  User.swift
//  tableView
//
//  Created by Rafael Nunes Rios on 10/11/20.
//

import Foundation


struct User {
    var name: String
    var email: String
    var photoAsString: String
    
    
    init(name: String, email: String, photoAsString: String) {
        self.name = name
        self.email = email
        self.photoAsString = photoAsString
    }
}
