//
//  PessoaJuridica.swift
//  Exe01_Protocols
//
//  Created by Rafael Rios on 9/18/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import Foundation

class PessoaJuridica: Pessoa {
    var cnpj: String
    
    init(nome: String, cnpj: String) {
        
        self.cnpj = cnpj
        
        super.init(nome: nome)
    }
}

extension PessoaJuridica: FormatadorProtocol {
    
    func getFormatado() -> String {
        return "\(nome) \(cnpj)"
    }
    
    func getFormatadoParaUsuario() -> String {
        return "Pessoa Jurídica ==> Nome: \(nome) CNPJ: \(cnpj)"
    }
    
}
