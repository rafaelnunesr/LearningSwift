//
//  Movimentacao.swift
//  TabBar
//
//  Created by Rafael Nunes Rios on 10/23/20.
//

import Foundation

struct Movimentacao: Codable {
    
    let lancamentos: [LancamentoElement]
    
    
}

struct LancamentoElement: Codable {
   
    let id, nome, data, tipo: String
    let valor: Double
    
}
