//
//  Cartoes.swift
//  TabBar
//
//  Created by Rafael Nunes Rios on 10/26/20.
//

import Foundation

struct Cartoes: Codable {
    let cartoes: [CartoesElement]
}

struct CartoesElement: Codable {
    
    let id, nome, data, numero, bandeira: String
    
}
