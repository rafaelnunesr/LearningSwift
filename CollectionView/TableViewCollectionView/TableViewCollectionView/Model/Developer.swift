//
//  Developer.swift
//  TableViewCollectionView
//
//  Created by Rafael Nunes Rios on 10/19/20.
//

import Foundation

struct Developer {
    var name: String
    var photo: String
    var platform: String
    var experienceYears: Int
    
    init(name: String, photo: String,
         platform: String, experienceYears: Int) {
        self.name = name
        self.photo = photo
        self.platform = platform
        self.experienceYears = experienceYears
    }
    
}
