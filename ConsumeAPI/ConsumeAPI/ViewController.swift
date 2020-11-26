//
//  ViewController.swift
//  ConsumeAPI
//
//  Created by Rafael Nunes Rios on 11/25/20.
//

import UIKit

class ViewController: UIViewController {
    
    private var imageBackground = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.imageBackground)
        setupImageBackground()
        
        let imageURL = URL(string: "https://")!
        
        let task = URLSession.shared.dataTask(with: imageURL) { (data, response, error) in
            if error == nil {
                let loadImage = UIImage(data: data!)
                
                self.imageBackground.image = loadImage
            }
        }
        task.resume()
        
    }
    
    private func setupImageBackground() {
        self.imageBackground.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(self.imageBackground.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor))
        constraints.append(self.imageBackground.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(self.imageBackground.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor))
        constraints.append(self.imageBackground.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor))
        
        NSLayoutConstraint.activate(constraints)
    }

}

