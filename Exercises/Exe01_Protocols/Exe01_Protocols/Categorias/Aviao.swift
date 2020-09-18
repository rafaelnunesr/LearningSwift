//
//  Aviao.swift
//  Exe01_Protocols
//
//  Created by Rafael Rios on 9/18/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import Foundation

class Aviao {
    var modelo: String
    var cidade: String
    
    init(modelo: String, cidade: String) {
        self.modelo = modelo
        self.cidade = cidade
    }
}

extension Aviao: FormatadorProtocol {
    
    func getFormatado() -> String {
        return "\(modelo) \(cidade)"
    }
    
    func getFormatadoParaUsuario() -> String {
        return "Avião ==> Modelo: \(modelo) Cidade: \(cidade)"
    }
}
