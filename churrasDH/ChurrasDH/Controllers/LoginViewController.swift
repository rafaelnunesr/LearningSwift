//
//  LoginViewController.swift
//  ChurrasDH
//
//  Created by Rodrigo Santos on 27/01/21.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) {
                authResult, error in
                
                if let e = error {
                    print(e)
                } else {
                    print(authResult?.user.uid)
                    
                    
                    let currentUser = User.getCurrentUser()
                    
                    if currentUser == nil {
                        // Precisamos salvar o usuário no CoreData
                        
                        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
                        
                        let user = CoreUser(context: context)
                        
                        if let userUID = authResult?.user.uid {
                            user.uid = userUID
                            user.email = email
                        }
                        
                        do {
                            try context.save()
                        } catch {
                            print("erro ao salvar o usuario no login \(error)")
                        }
                    }
                    
                    UserDefaultsHelper.saveLoggedUser()
                    self.performSegue(withIdentifier: "LoginToChat", sender: self)
                }
            }
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
