//
//  ViewController.swift
//  TabAndNav
//
//  Created by Rafael Nunes Rios on 1/26/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapButton() {
        
        let viewController = UIViewController()
        viewController.view.backgroundColor = .blue
        navigationController?.pushViewController(viewController, animated: true)
    }

}

