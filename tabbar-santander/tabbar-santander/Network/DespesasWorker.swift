//
//  DespesasWorker.swift
//  tabbar-santander
//
//  Created by Rafael Nunes Rios on 12/4/20.
//

import Foundation


class DespesasWorker: GenericWorker {
    
    func getDespesas(completion: @escaping completion<Movimentacao?>){
        
        let session: URLSession = URLSession.shared
        
        let url: URL? = URL(string: "api.mocki.io/v1/3f3b9a9d")
        
        if let _url = url {
            
            let task: URLSessionTask = session.dataTask(with: _url) { (data, response, error) in
                
                do {
                    let despesas = try JSONDecoder().decode(Movimentacao.self , from: data ?? Data())
                    completion(despesas, nil)
                }catch{
                    completion(nil, "deu ruim")
                }
            }
            
            task.resume()
            
        }
    }
    
    
    func getLancamentos(completion: @escaping completion<[LancamentoElement]?>){
        
        let session: URLSession = URLSession.shared
        
        let url: URL? = URL(string: "https://api.mocki.io/v1/3f3b9a9d")
        
        if let _url = url {
            
            let task: URLSessionTask = session.dataTask(with: _url) { (data, response, error) in
                
                do {
                    let despesas = try JSONDecoder().decode(Movimentacao.self , from: data ?? Data())
                    completion(despesas.lancamentos, nil)
                }catch{
                    completion(nil, "deu ruim")
                }
            }
            
            task.resume()
        }
    }
    
}
