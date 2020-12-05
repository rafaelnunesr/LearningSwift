//
//  CreditCardWorker.swift
//  tabbar-santander
//
//  Created by Rafael Nunes Rios on 12/4/20.
//

import Foundation

class CreditCardWorker: GenericWorker {
    
    func getCreditCards(completion: @escaping completion<Cartoes?>) {
        
        let session: URLSession = URLSession.shared
        let url: URL? = URL(string: "https://gist.githubusercontent.com/ooredroxoo/a474fc39a8c3c209daf29b95dd1fad3b/raw/2644152eed972bd1e8f347e487744d5538a4ddf2/cartoes.json")
        
        if let _url = url {
            
            let task: URLSessionTask = session.dataTask(with: _url) { (data, response, error) in
                
                do {
                    let cartoes = try JSONDecoder().decode(Cartoes.self, from: data ?? Data())
                    completion(cartoes, nil)
                }catch {
                    completion(nil, "deu ruim")
                }
            }
            task.resume()
        }
    }
}
