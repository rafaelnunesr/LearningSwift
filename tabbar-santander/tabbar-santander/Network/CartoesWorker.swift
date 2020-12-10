//
//  CartoesWorker.swift
//  tabbar-santander
//
//  Created by Felipe Miranda on 04/12/20.
//

import Foundation
import Alamofire

class CartoesWorker: GenericWorker {
    
    
    func getCartoes(completion: @escaping completion<Cartoes?>) {
        
        let url: URL? = URL(string: "https://gist.githubusercontent.com/ooredroxoo/a474fc39a8c3c209daf29b95dd1fad3b/raw/2644152eed972bd1e8f347e487744d5538a4ddf2/cartoes.json")
        
        if let _url = url {
            
            var urlRequest = URLRequest(url: _url)
            urlRequest.httpMethod = Method.get.rawValue
            
            AF.request(urlRequest).response { (response) in
                if response.response?.statusCode == 200 {
                    
                    do {
                        let cartoes = try JSONDecoder().decode(Cartoes.self , from: response.data ?? Data())
                        completion(cartoes, nil)
                    }catch{
                        completion(nil, nil)
                    }
                }else {
                    completion(nil, ErrorHandler(title: "Error", description: response.error?.errorDescription, code: response.error?.responseCode))
                }
            }
            
        }
        
        
    }
    
    
    
    
    // URL SESSION
    /*
    func getCartoes(completion: @escaping completion<Cartoes?>){
        
        let session: URLSession = URLSession.shared
        
        let url: URL? = URL(string: "https://gist.githubusercontent.com/ooredroxoo/a474fc39a8c3c209daf29b95dd1fad3b/raw/2644152eed972bd1e8f347e487744d5538a4ddf2/cartoes.json")
        
        if let _url = url {
            
            let task: URLSessionTask = session.dataTask(with: _url) { (data, response, error) in
                
                do {
                    let cartoes = try JSONDecoder().decode(Cartoes.self , from: data ?? Data())
                    completion(cartoes, nil)
                }catch{
                    completion(nil, nil)
                }
            }
            
            task.resume()
        }
    }*/
    
}
