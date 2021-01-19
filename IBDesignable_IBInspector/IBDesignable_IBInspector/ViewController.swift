//
//  ViewController.swift
//  IBDesignable_IBInspector
//
//  Created by Rafael Nunes Rios on 1/18/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myCustomView = CustomView(frame: CGRect(x: 100, y: 100, width: 200, height: 300))
        myCustomView.cornerRadius = 10
        myCustomView.color = .red
        myCustomView.borderColor = .gray
        myCustomView.borderWidth = 3
        
        self.view.addSubview(myCustomView)
    }

}

