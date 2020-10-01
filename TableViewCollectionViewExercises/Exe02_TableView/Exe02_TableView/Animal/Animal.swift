//
//  Animal.swift
//  Exe02_TableView
//
//  Created by Rafael Rios on 10/1/20.
//

import Foundation
import UIKit

class Animal {
    var name: String
    var photo: String
    var breed: String
    var weight: Float
    var specie: String
    
    init(name: String, photo: String, breed: String, weight: Float, specie: String) {
        
        self.name = name
        self.photo = photo
        self.breed = breed
        self.weight = weight
        self.specie = specie
    }
}

