//
//  RegisterViewController.swift
//  ChurrasDH
//
//  Created by Rodrigo Santos on 27/01/21.
//

import UIKit
import Firebase
import CoreData

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func registerPressed(_ sender: UIButton) {
        print("Registro clicado")
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) {
                authResult, error in
                if let e = error {
                    print(e)
                } else {
                    // Navegar pra tela do chat
                    
                    // acessar variavel do AppDelegate
                    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
                    
                    let user = CoreUser(context: context)
                    
                    if let userUID = authResult?.user.uid {
                        user.uid = userUID
                        user.email = email
                    }

                    // salvar usuario no coredata
                    do {
                        try context.save()
                    } catch  {
                        print(error)
                    }
                    
                    UserDefaultsHelper.saveLoggedUser()
                    self.performSegue(withIdentifier: "RegisterToChat", sender: self)
                }
            }
        } else {
            // Mensagem de erro: os campos não podem ser vazios
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
