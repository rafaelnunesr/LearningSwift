//
//  Produto.swift
//  LojaVirtual
//
//  Created by Rodrigo de Sousa Santos on 02/10/20.
//  Copyright © 2020 Rodrigo de Sousa Santos. All rights reserved.
//

import Foundation

// MARK: ENUM
enum Categorias: Int {
    case eletronicos = 0
    case lazer = 1
    case eletrodomesticos = 2
}

struct Produto {
    let nome: String
    let preco: String
    let categoria: Categorias
}
