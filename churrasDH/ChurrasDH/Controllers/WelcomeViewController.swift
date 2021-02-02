//
//  WelcomeViewController.swift
//  ChurrasDH
//
//  Created by Rodrigo Santos on 27/01/21.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaultsHelper.userIsLogged() {
            self.performSegue(withIdentifier: "WelcomeToChat", sender: nil)
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    
}
