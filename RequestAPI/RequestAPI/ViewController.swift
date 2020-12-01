//
//  ViewController.swift
//  RequestAPI
//
//  Created by Rafael Nunes Rios on 11/30/20.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        requestAPI()
    }
    
    private func requestAPI() {
        
        let session: URLSession = URLSession.shared
        let url: URL? = URL(string: "https://sky-exercise.herokuapp.com/api/movies")
        
        if let _url = url {
            let task: URLSessionTask = session.dataTask(with: _url) { (data, response, error) in
                
                do {
                    let json = try JSONSerialization.jsonObject(with: data ?? Data(), options: [])
                    
                    print(json)
                } catch  {
                    print(error)
                }
                
            }
            task.resume()
        }
        
    }
    
}

