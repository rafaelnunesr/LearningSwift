//
//  Caneta.swift
//  Exe01_Protocols
//
//  Created by Rafael Rios on 9/18/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import Foundation

class Caneta {
    var marca: String
    
    init(marca: String) {
        self.marca = marca
    }
}


extension Caneta: FormatadorProtocol {
    
    func getFormatado() -> String {
        return "\(marca)"
    }
    
    func getFormatadoParaUsuario() -> String {
        return "Caneta ==> Marca: \(marca)"
    }
    
}
