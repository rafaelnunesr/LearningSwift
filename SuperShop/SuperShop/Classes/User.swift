//
//  User.swift
//  SuperShop
//
//  Created by Rafael Rios on 9/29/20.
//

import Foundation
import UIKit

class User {
    var name: String
    var email: String
    private var cpf: String
    private var rg: String?
    var birthday: String?
    
    init(name: String, email: String, cpf: String, rg: String, birthday: String) {
        self.name = name
        self.email = email
        self.cpf = cpf
        self.rg = rg
        self.birthday = birthday
    }
    
    func getUserCpf() -> String {
        return cpf
    }
    
    func getUserRg() -> String? {
        return rg ?? nil
    }
}
