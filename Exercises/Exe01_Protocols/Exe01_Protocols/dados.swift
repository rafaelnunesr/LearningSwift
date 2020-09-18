//
//  dados.swift
//  Exe01_Protocols
//
//  Created by Rafael Rios on 9/18/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import Foundation

// MARK: Declaração de Pessoa Jurídica
let spServicos = PessoaJuridica(nome: "SPServicos", cnpj: "01458890000112")
let brMercados = PessoaJuridica(nome: "BRMercados", cnpj: "01120459000113")

// MARK: Declaracão de Pessoa Física
let joao = PessoaFisica(nome: "João", cpf: "00478934501")
let pedro = PessoaFisica(nome: "Pedro", cpf: "23482764501")

// MARK: Declaração de Cachorro
let toto = Cachorro(nome: "Toto", raca: "Pinscher")
let chulinho = Cachorro(nome: "Chulinho", raca: "Dobermann")

// MARK: Declaração de Avião
let boing737 = Aviao(modelo: "Boing 737", cidade: "São Paulo")
let airbusA330 = Aviao(modelo: "Airbus A330", cidade: "Manaus")

// MARK: Declaração de Caneta
let bic = Caneta(marca: "BIC")
let montBlanc = Caneta(marca: "Mont Blanc")


extension ViewController {
    
    func inicializarDados() {
        
        let arrayItensCategorias: [FormatadorProtocol] = [spServicos, brMercados,
                                                          joao, pedro, toto,
                                                          chulinho, boing737,
                                                          airbusA330, bic, montBlanc]
        
        for item in arrayItensCategorias {
            arrayItens.append(item)
        }
        
    }
    
}

