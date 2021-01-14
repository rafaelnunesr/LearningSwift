//
//  MapDetailsVC.swift
//  tabbar-santander
//
//  Created by Rafael Nunes Rios on 1/13/21.
//

import UIKit

class MapDetailsVC: UIViewController {
    
    var myLabel: UILabel = UILabel()
    var labelData: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(self.myLabel)
        self.setupMyLabel()
    }
    
    func setup() {
        
        if let data = self.labelData {
            self.myLabel.text = data

        }
    }
    
    func setupMyLabel() {
        
        self.myLabel.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(self.myLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20))
        constraints.append(self.myLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 20))
        constraints.append(self.myLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -20))
        constraints.append(self.myLabel.heightAnchor.constraint(equalToConstant: 30))
        
        NSLayoutConstraint.activate(constraints)
        
        self.myLabel.backgroundColor = .systemGray6
        
    }

}
