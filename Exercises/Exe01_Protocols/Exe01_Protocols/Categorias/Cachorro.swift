//
//  Cachorro.swift
//  Exe01_Protocols
//
//  Created by Rafael Rios on 9/18/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import Foundation

class Cachorro: Animal {
    var raca: String
    
    init(nome: String, raca: String) {
        self.raca = raca
        
        super.init(nome: nome)
    }
}

extension Cachorro: FormatadorProtocol {
    
    func getFormatado() -> String {
        return "\(nome) \(raca)"
    }
    
    func getFormatadoParaUsuario() -> String {
        return "Cachorro ==> Nome: \(nome) Raça: \(raca)"
    }
    
}
