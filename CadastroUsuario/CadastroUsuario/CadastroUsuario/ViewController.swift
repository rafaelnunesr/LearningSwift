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
    @IBOutlet weak var buttonSignUp: UIButton!
    
    private var arrayUsers = [Users]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setButtonSignUp()
        
        textFieldEmail.delegate = self
        textFieldPassword.delegate = self
    }
    
    
    @IBAction func buttonSignUp(_ sender: Any) {
        if validateTextFields() {
            registerUser(email: textFieldEmail.text!)
        }
    }
    
    
    private func setButtonSignUp() {
        buttonSignUp.layer.cornerRadius = 8.0
        buttonSignUp.backgroundColor = UIColor.gray
        disableButtonSignUp()
    }
    
    
    private func disableButtonSignUp() {
        buttonSignUp.isEnabled = false
    }
    
    
    private func enableButtonSignIn() {
        buttonSignUp.isEnabled = true
        buttonSignUp.backgroundColor = UIColor.blue
    }
    
    
    private func setBackgroundColor(color: String) {
        
        switch color {
        case "white":
            self.view.backgroundColor = UIColor.white
        case "red":
            self.view.backgroundColor = UIColor.red
        case "green":
            self.view.backgroundColor = UIColor.green
        default:
            self.view.backgroundColor = UIColor.white
        }
    }
    
    
    private func validateTextFields() -> Bool {
        if textFieldEmail.text == nil || textFieldEmail.text!.isEmpty {
            showAlert(title: "Atenção", message: "Falta o email")
            return false
        }
        
        if textFieldPassword.text == nil || textFieldPassword.text!.isEmpty {
            showAlert(title: "Atenção", message: "Falta a senha")
            return false
        }
        
        return true
    }
    
    private func cleanTextFields() {
        textFieldEmail.text = ""
        textFieldPassword.text = ""
    }
    
    
    private func showAlert(title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .cancel) { (UIAlertAction) in
            self.setBackgroundColor(color: "white")
        }
        alert.addAction(okAction)
        self.present(alert, animated: true) {

        }
        
    }
    
    
    private func checkIfUserExists(email: String) -> Bool {
        
        for user in arrayUsers {
            if user.email == email {
                return true
            }
        }
        
        return false
    }
    
    
    private func registerUser(email: String) {
        
        if !checkIfUserExists(email: email) {

            setBackgroundColor(color: "green")
            showAlert(title: "Bem Vindo", message: "Você acabou de se cadastrar!")
            
            let user = Users(email: textFieldEmail.text!, password: textFieldPassword.text!)
            arrayUsers.append(user)
            
            
        }else {
            
            setBackgroundColor(color: "red")
            showAlert(title: "Ops", message: "Você já foi cadastrado!")
        }
        
        setButtonSignUp()
        cleanTextFields()
    }

}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == textFieldEmail && textFieldEmail.text! != "" {
            enableButtonSignIn()
            textFieldPassword.becomeFirstResponder()
        }else {
            textField.resignFirstResponder()
        }
        
        return true
    }
}

