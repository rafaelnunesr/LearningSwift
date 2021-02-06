//
//  UserDefaultsHelper.swift
//  ChurrasDH
//
//  Created by Rodrigo Santos on 01/02/21.
//

import Foundation

class UserDefaultsHelper {
    static var defaults = UserDefaults.standard
    
    static func userIsLogged() -> Bool {
        return defaults.bool(forKey: "isLogged")
    }
    
    static func saveLoggedUser() {
        defaults.set(true, forKey: "isLogged")
    }
    
    static func logoutUser() {
        defaults.set(false, forKey: "isLogged")
    }
}
