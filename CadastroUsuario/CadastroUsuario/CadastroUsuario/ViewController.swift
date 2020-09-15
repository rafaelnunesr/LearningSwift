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
    private var senha: String
    
    init(email: String, senha: String) {
        self.email = email
        self.senha = senha
    }
    
    func getSenha() -> String {
        return senha
    }
    
}

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldSenha: UITextField!
    @IBOutlet weak var buttonCadastrar: UIButton!
    
    private var arrayUsers = [Users]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.view.backgroundColor = UIColor.red
        setButtonCadastrar()
        
        textFieldEmail.delegate = self
        textFieldSenha.delegate = self
    }
    
    @IBAction func buttonCadastrar(_ sender: Any) {
        
        if validaTextFields() {
            cadastrarUser(email: textFieldEmail.text ?? "")
        }
    }
    
    // Cadastrar Button
    private func setButtonCadastrar() {
        buttonCadastrar.isEnabled = false
        buttonCadastrar.layer.cornerRadius = 8.0
        buttonCadastrar.backgroundColor = UIColor.gray
    }
    
    private func enableCadastrarButton() {
        buttonCadastrar.isEnabled = true
        buttonCadastrar.backgroundColor = UIColor.blue
    }
    
    
    private func validaTextFields() -> Bool {
        if textFieldEmail.text == nil || textFieldEmail.text!.isEmpty {
            alerta(title: "Atenção", message: "Falta o email")
            return false
        }
        
        if textFieldSenha.text == nil || textFieldSenha.text!.isEmpty {
            alerta(title: "Atenção", message: "Falta a senha")
            return false
        }
        
        return true
    }
    
    private func cleanTextFields() {
        textFieldEmail.text = ""
        textFieldSenha.text = ""
    }
    
    private func alerta(title: String, message: String) {
        
        // Comeca alerta
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .cancel) { (UIAlertAction) in
        }
        alert.addAction(okAction)
        self.present(alert, animated: true) {
           
        }
        // Termina alerta
    }
    
    
    private func checkIfUserExists(email: String) -> Bool {
        var x: Int = 0
        
        print(arrayUsers.count)

        while x < arrayUsers.count {
            print("user => \(arrayUsers[x].email)")
            //if email == arrayUsers[x].email {
              // return true
            //}
            
            x = x + 1
        }
        
        return false
    }
    
    private func cadastrarUser(email: String) {
        if !checkIfUserExists(email: email) {
            
            // tela verde
            cleanTextFields()
            self.view.backgroundColor = UIColor.green
            alerta(title: "Bem Vindo", message: "Você acabou de se cadastrar!")
            
            print(textFieldEmail.text)
            let user = Users(email: textFieldEmail.text!, senha: textFieldSenha.text!)
            print("firstPrint => \(user.email)")
            
            arrayUsers.append(Users(email: textFieldEmail.text!, senha: textFieldSenha.text!))
            
            
        }else {
            // tela vermelha
            cleanTextFields()
            self.view.backgroundColor = UIColor.red
            alerta(title: "Ops", message: "Você já foi cadastrado!")
        }
    }

}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == textFieldEmail {
            enableCadastrarButton()
            textFieldSenha.becomeFirstResponder()
        }else {
            textField.resignFirstResponder()
        }
        
        return true
    }
}

