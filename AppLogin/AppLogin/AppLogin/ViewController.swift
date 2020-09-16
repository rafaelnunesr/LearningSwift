//
//  ViewController.swift
//  AppLogin
//
//  Created by Rafael Rios on 9/15/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import UIKit

class Users {
    var email: String
    private var password: String
    
    init(email: String, password: String) {
        self.email = email
        self.password = password
    }
    
    func getPassword() -> String {
        return password
    }
}

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBOutlet weak var buttonSignIn: UIButton!
    @IBOutlet weak var buttonSignUp: UIButton!
    
    
    private var arrayUsers = [Users]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldEmail.delegate = self
        textFieldPassword.delegate = self
        
        buttonSignIn.layer.cornerRadius = 8.0
        buttonSignUp.layer.cornerRadius = 8.0
        
        disableButtons()
    }
    
    
    @IBAction func buttonSignIn(_ sender: Any) {
        
        if checkTextFields() {
            
            if checkIfUserExists() {
                
                let userCredentials = getUser()
                let userPassword = userCredentials[textFieldEmail.text!]!
                
                // check if password match
                if checkUserPassword(userPassword: userPassword) {
                    alert(title: "Usuário Logado", message: "Bem vindo de volta. :)")
                    changeBackgroundColor(color: "green")
                }else {
                    alert(title: "Senha Incorreta", message: "A senha informada não confere.")
                    changeBackgroundColor(color: "red")
                }
            }else {
                alert(title: "Usuário Inválido", message: "Desculpe, você ainda não foi registrado.")
                changeBackgroundColor(color: "red")
            }
        }
    }

    @IBAction func buttonSignUp(_ sender: Any) {
        
        if checkTextFields() {
            
            if !checkIfUserExists() {
                registerNewUser()
                alert(title: "Usuário cadastrado", message: "Seja muito bem vindo a nossa plataforma.")
                changeBackgroundColor(color: "blue")
            }else {
                alert(title: "Usuário já existe", message: "Desculpe, você já foi registrado.")
                changeBackgroundColor(color: "red")
            }
        }
        
    }
    
    private func checkTextFields() -> Bool {
        if textFieldEmail.text == nil || textFieldEmail.text!.isEmpty {
            alert(title: "Ops", message: "Informe seu email")
            return false
        }
        
        if textFieldPassword.text == nil || textFieldPassword.text!.isEmpty {
            alert(title: "Ops", message: "Informe sua senha")
            return false
        }
        
        return true
    }
    
    private func alert(title: String, message msg: String) {
        
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .cancel) { (UIAlertAction) in
            self.changeBackgroundColor(color: "white")
            self.cleanTextFields()
            self.disableButtons()
        }
        alert.addAction(okAction)
        self.present(alert, animated: true) {
           
        }
    }
    
    private func checkIfUserExists() -> Bool {
        
        for user in arrayUsers {
            if user.email == textFieldEmail.text {
                return true
            }
        }
        
        return false
    }
    
    private func registerNewUser() {
        let newUser = Users(email: textFieldEmail.text!, password: textFieldPassword.text!)
        
        arrayUsers.append(newUser)
    }
    
    
    private func getUser() -> [String: String] {
        
        var userCredentials = [String: String]()
        
        for user in arrayUsers {
            if user.email == textFieldEmail.text {
                userCredentials["\(user.email)"] = user.getPassword()
                
                return userCredentials
            }
        }
        
        return userCredentials
    }
    
    private func checkUserPassword(userPassword: String) -> Bool {
        
        if userPassword == textFieldPassword.text {
            return true
        }
        
        return false
        
    }
    
    private func changeBackgroundColor(color: String) {
        
        switch color {
        case "white":
            self.view.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.0)
        case "red":
            self.view.backgroundColor = UIColor(red: 0.91, green: 0.00, blue: 0.04, alpha: 1.0)
        case "green":
            self.view.backgroundColor = UIColor(red: 0.67, green: 1.00, blue: 0.80, alpha: 1.0)
        case "blue":
            self.view.backgroundColor = UIColor(red: 0.00, green: 0.40, blue: 1.00, alpha: 1.00)
        default:
            self.view.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.0)
        }
        
    }
    
    private func cleanTextFields() {
        textFieldEmail.text = ""
        textFieldPassword.text = ""
    }
    
    private func enableButtons() {
        buttonSignIn.isEnabled = true
        buttonSignIn.backgroundColor = UIColor(red: 0.16, green: 0.65, blue: 0.32, alpha: 1.00)
        
        buttonSignUp.isEnabled = true
        buttonSignUp.backgroundColor = UIColor(red: 0.16, green: 0.47, blue: 0.99, alpha: 1.00)

    }
    
    private func disableButtons() {
        buttonSignIn.isEnabled = false
        buttonSignIn.backgroundColor = UIColor.gray
        
        buttonSignUp.isEnabled = false
        buttonSignUp.backgroundColor = UIColor.gray
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == textFieldEmail {
            textFieldPassword.becomeFirstResponder()
            enableButtons()
        } else {
            textField.resignFirstResponder()
            disableButtons()
        }
        
        return true
    }
}
