//
//  User.swift
//  DesafioCustomTableCell
//
//  Created by Rafael Nunes Rios on 10/9/20.
//

import Foundation

struct User {
    var firstName: String
    var lastName: String
    var email: String
    var registration: String
    
    init(firstName: String, lastName: String, email: String, registration: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.registration = registration
    }
}
