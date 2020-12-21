//
//  Worker.swift
//  IBGE - URLRequest
//
//  Created by Rafael Nunes Rios on 12/21/20.
//

import Foundation

class Worker {
    
    func requestAPI() {
        let session: URLSession = URLSession.shared
        let url: URL? = URL(string: "https://servicodados.ibge.gov.br/api/v1/localidades/estados")
        
        if let _url = url {
            let task: URLSessionTask = session.dataTask(with: _url) { (data, response, error) in
                
                do{
                    let json = try JSONSerialization.jsonObject(with: data ?? Data(), options: [])
                    
                    print(json)
                    
                }catch {
                    print(error)
                }
            }
            task.resume()
        }
    }
}
