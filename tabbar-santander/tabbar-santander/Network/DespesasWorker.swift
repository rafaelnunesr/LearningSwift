//
//  DespesasWorker.swift
//  tabbar-santander
//
//  Created by Felipe Miranda on 04/12/20.
//

import Foundation
import Alamofire

class DespesasWorker: GenericWorker {
    
    func getLancamentos(completion: @escaping completion<[LancamentoElement]?>) {
        let url: URL? = URL(string: "https://gist.githubusercontent.com/ooredroxoo/a474fc39a8c3c209daf29b95dd1fad3b/raw/2644152eed972bd1e8f347e487744d5538a4ddf2/despesas.json")
        
        if let _url = url {
            
            var urlRequest = URLRequest(url: _url)
            urlRequest.httpMethod = Method.get.rawValue
            
            AF.request(urlRequest).responseJSON { (response) in
                
                if response.response?.statusCode == 200 {
                    
                    do {
                        let  despesas = try JSONDecoder().decode(Movimentacao.self, from: response.data ?? Data())
                        completion(despesas.lancamentos, nil)
                    } catch  {
                        completion(nil, ErrorHandler(title: "Error", description: response.error?.errorDescription, code: response.error?.responseCode))
                    }
                    
                }else {
                    completion(nil, ErrorHandler(title: "Error", description: response.error?.errorDescription, code: response.error?.responseCode))
                }
                
            }
            
        }
        
    }
    
    
    
    // URL REQUEST
    /*
    func getDespesas(completion: @escaping completion<Movimentacao?>){
        
        let session: URLSession = URLSession.shared
    
        
        let url: URL? = URL(string: "api.mocki.io/v1/3f3b9a9d")
        
        if let _url = url {
            
            let task: URLSessionTask = session.dataTask(with: _url) { (data, response, error) in
                
                do {
                    let despesas = try JSONDecoder().decode(Movimentacao.self , from: data ?? Data())
                    completion(despesas, nil)
                }catch{
                    completion(nil, nil)
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
                    completion(nil, nil)
                }
            }
            
            task.resume()
        }
    }
 */
    
}
