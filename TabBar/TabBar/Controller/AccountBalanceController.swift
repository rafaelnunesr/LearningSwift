//
//  AccountBalanceController.swift
//  TabBar
//
//  Created by Rafael Nunes Rios on 11/4/20.
//
import UIKit

class AccountBalanceController {
    
    private var arrayLancamentos: [LancamentoElement] = []
    private var currentLancamentoElement: LancamentoElement?
    
    func loadCurrentLancamentoElement(index: Int) {
        self.currentLancamentoElement = arrayLancamentos[index]
    }
    
    func loadlancamentos() {
        if let path = Bundle.main.path(forResource: "despesas", ofType: "json") {
            
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let movimentacao = try JSONDecoder().decode(Movimentacao.self, from: data)
                
                print("=======>movimentacao \(movimentacao)")
                
                self.arrayLancamentos = movimentacao.lancamentos
            }catch {
                print("Deu ruim no parse")
            }
        }
    }
    
    var lancamentoElement: LancamentoElement? {
        return self.currentLancamentoElement
    }
    
    var numberOfRows: Int {
        return self.arrayLancamentos.count
    }
}
