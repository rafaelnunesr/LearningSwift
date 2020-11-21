//
//  CreditCardController.swift
//  TabBar
//
//  Created by Rafael Nunes Rios on 11/6/20.
//

import Foundation

class CreditCardController {

    private var cartoes: Cartoes?
    private var isReloadCollection: Bool = false
    
    func loadCreditCard(completionHandler: (_ result: Bool,  _ error: Error?) -> Void) {
        
        if let path = Bundle.main.path(forResource: "cartoes", ofType: "json"){
            
            do {
                
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                
                let cartoes = try JSONDecoder().decode(Cartoes.self, from: data)
                
                print("=======>cartoes\(cartoes)")
                self.cartoes = cartoes
                completionHandler(true, nil)
                
            }catch{
                print("Deu ruim no parse")
                completionHandler(false, error)
            }
        }
    }
    
    func appendCreditCard(value: CartoesElement?) {
        
        if let _value = value {
            self.cartoes?.cartoes.append(_value)
        }
    }
    
    var loadCartoes: Cartoes? {
        return self.cartoes
    }
    
    var numberOfRows: Int {
        return 1
    }
    
    func addCreditCard(newCard: CartoesElement) {
        self.cartoes?.cartoes.append(newCard)
        self.isReloadCollection = true
    }
    
    var reloadCreditCards: Bool {
        return self.isReloadCollection
    }
}
