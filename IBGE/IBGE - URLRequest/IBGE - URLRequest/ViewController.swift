//
//  ViewController.swift
//  IBGE - URLRequest
//
//  Created by Rafael Nunes Rios on 12/21/20.
//

import UIKit

class ViewController: UIViewController {

    var worker: Worker = Worker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        worker.requestAPI()
    }


}

