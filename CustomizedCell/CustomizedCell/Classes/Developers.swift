//
//  Developers.swift
//  CustumizedCell
//
//  Created by Rafael Rios on 9/28/20.
//

import Foundation
import UIKit

class Developers {
    var arrayDevelopers = [Developer]()
    
    func addNewDeveloper(name: String, email: String, photo: String) {
        
        arrayDevelopers.append(Developer(name: name, email: email, photo: photo))
    }
    
    func removeDeveloper(email: String) {
        if let developerIndex = ifDeveloperExistsReturnsIndex(email: email)  {
            arrayDevelopers.remove(at: developerIndex)
        }
    }
    
    func ifDeveloperExistsReturnsIndex(email: String) -> Int? {
        
        for (index, dev) in arrayDevelopers.enumerated() {
            if dev.email == email {
                return index
            }
        }
        
        return nil
    }
}
