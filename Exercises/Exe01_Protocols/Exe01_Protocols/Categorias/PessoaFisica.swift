//
//  PessoaFisica.swift
//  Exe01_Protocols
//
//  Created by Rafael Rios on 9/18/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import Foundation

class PessoaFisica: Pessoa {
    var cpf: String
    
    init(nome: String, cpf: String) {
        self.cpf = cpf
        
        super.init(nome: nome)
    }
}

extension PessoaFisica: FormatadorProtocol {
    
    func getFormatado() -> String {
        return "\(nome) \(cpf)"
    }
    
    func getFormatadoParaUsuario() -> String {
        return "Pessoa Física ==> Nome: \(nome) CPF: \(cpf)"
    }
    
}
