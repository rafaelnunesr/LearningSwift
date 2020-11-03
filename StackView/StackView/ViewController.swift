//
//  ViewController.swift
//  StackView
//
//  Created by Rafael Nunes Rios on 11/3/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createStackView()
    }

    func createStackView() {
        
        
        let imageView = UIImageView()
        imageView.backgroundColor = .systemGreen
        imageView.image = UIImage(systemName: "bell")
        imageView.contentMode = .scaleAspectFit
        imageView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: view.frame.size.height / 3).isActive = true
        
        let label = UILabel()
        label.backgroundColor = .systemBlue
        label.text = "Hello World"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 21, weight: .bold)
        //label.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        //label.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let label2 = UILabel()
        label2.backgroundColor = .systemOrange
        label2.text = "Another Label"
        label2.textAlignment = .center
        label2.font = .systemFont(ofSize: 21, weight: .bold)
        //label2.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        //label.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let stackView = UIStackView(arrangedSubviews: [imageView, label, label2])
        stackView.frame = view.bounds
        stackView.backgroundColor = .systemYellow
        
        // Config
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        
        view.addSubview(stackView)
    }

}

