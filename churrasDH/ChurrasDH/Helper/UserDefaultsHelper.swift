//
//  UserDefaultsHelper.swift
//  ChurrasDH
//
//  Created by Rafael Nunes Rios on 2/1/21.
//

import Foundation

class UserDefaultsHelper{
    static var defaults = UserDefaults.standard
    
    static func userIsLogged() -> Bool {
        return defaults.bool(forKey: "isLogged")
    }
    
    static func saveLoggedUser() {
        defaults.set(true, forKey: "isLogged")
    }
    
    static func loggoutUser() {
        defaults.set(false, forKey: "isLogged")
    }
}
