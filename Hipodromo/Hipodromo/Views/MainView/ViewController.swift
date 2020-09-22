//
//  ViewController.swift
//  Hipodromo
//
//  Created by Rafael Rios on 9/22/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func actionGetNotified(_ sender: Any) {
        presentModal(modalName: "MainViewModal")
    }
    
    
    @IBAction func actionStartHorseRace(_ sender: Any) {
        startHorseRace()
    }
    
    
    private func notifyUser() {
       
    }
    
    func startHorseRace() {
            
        // runs after 3 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: {
                self.notifyUser()
        })
    }
    
    private func alert(title: String, message msg: String) {
           
           let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)

           let okAction = UIAlertAction(title: "OK", style: .cancel) { (UIAlertAction) in
           }
           
           alert.addAction(okAction)
           self.present(alert, animated: true) {
              
           }
       }
    
}

