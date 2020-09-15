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
        
        //self.view.backgroundColor = UIColor.red
        setButtonSignUp()
        
        textFieldEmail.delegate = self
        textFieldPassword.delegate = self
    }
    
    
    @IBAction func buttonSignUp(_ sender: Any) {
    }
    
    
    @IBAction func buttonSignIn(_ sender: Any) {
        
        if validateTextFields() {
            registerUser(email: textFieldEmail.text ?? "")
        }
    }

    
    private func setButtonSignUp() {
        buttonSignUp.isEnabled = false
        buttonSignUp.layer.cornerRadius = 8.0
        buttonSignUp.backgroundColor = UIColor.gray
    }
    
    private func enableButtonSignIn() {
        buttonSignUp.isEnabled = true
        buttonSignUp.backgroundColor = UIColor.blue
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
        }
        alert.addAction(okAction)
        self.present(alert, animated: true) {
           
        }
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
    
    private func registerUser(email: String) {
        
        print("email: \(email)")
        if !checkIfUserExists(email: email) {
            
            cleanTextFields()
            self.view.backgroundColor = UIColor.green
            showAlert(title: "Bem Vindo", message: "Você acabou de se cadastrar!")
            
            print(textFieldEmail.text)
            let user = Users(email: textFieldEmail.text!, password: textFieldPassword.text!)
            print("firstPrint => \(user.email)")
            
            arrayUsers.append(Users(email: textFieldEmail.text!, password: textFieldPassword.text!))
            
            
        }else {
            
            cleanTextFields()
            self.view.backgroundColor = UIColor.red
            showAlert(title: "Ops", message: "Você já foi cadastrado!")
        }
    }

}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == textFieldEmail {
            enableButtonSignIn()
            textFieldPassword.becomeFirstResponder()
        }else {
            textField.resignFirstResponder()
        }
        
        return true
    }
}

