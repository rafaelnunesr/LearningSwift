//
//  ViewController.swift
//  CadastroUsuario
//
//  Created by Rafael Rios on 9/14/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import UIKit

class Users {
    var email: String
    var senha: String
    
    init(email: String, senha: String) {
        self.email = email
        self.senha = senha
    }
    
}

class ViewController: UIViewController {
    
    private var arrayUsers = [Users]()
    
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldSenha: UITextField!
    @IBAction func buttonCadastrar(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldEmail.delegate = self
        textFieldSenha.delegate = self
    }
    
    private func checkIfUserExists(email: String) -> Bool {
        var x = 0
        
        while x <= arrayUsers.count {
            if email == arrayUsers[x].email {
                return true
            }
            
            x += 1
        }
        return false
    }
    
    private func cadastrarUser() {
        if !checkIfUserExists(email: textFieldEmail.text ?? "") {
            // tela verde
            
            
        }else {
            // tela vermelha
        }
    }

}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == textFieldEmail {
            textFieldSenha.becomeFirstResponder()
        }else {
            textField.resignFirstResponder()
        }
        
        return true
    }
}

