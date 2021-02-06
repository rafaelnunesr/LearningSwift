//
//  ChatViewController.swift
//  ChurrasDH
//
//  Created by Rodrigo Santos on 27/01/21.
//

import UIKit
import Firebase
import FirebaseFirestore
import FirebaseStorage
import CoreData

class ChatViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var messageTextField: UITextField!
    
    var messages: [Message] = []
    
    let db = Firestore.firestore()
    var userImage: UIImage = UIImage(named: "fogo")!
    var currentUser: CoreUser?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.register(UINib(nibName: "MessageCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
        navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
        loadMessages()
        loadCurrentUser()
    }
    
    private func loadCurrentUser() {
        self.currentUser = User.getCurrentUser()
        
        if let imageData = currentUser?.photoData {
            if let image = UIImage(data: imageData) {
                self.userImage = image
            }
        }
    }
    
    @IBAction func addPhoto(_ sender: UIBarButtonItem) {
        self.getImage(fromSourceType: .photoLibrary)
    }
    
    private func getImage(fromSourceType sourceType: UIImagePickerController.SourceType) {
        if UIImagePickerController.isSourceTypeAvailable(sourceType) {
            let imagePickerController = UIImagePickerController()
            
            imagePickerController.delegate = self
            imagePickerController.sourceType = sourceType
            
            self.present(imagePickerController, animated: true, completion: nil)
        }
    }
    
    @IBAction func logoutUser(_ sender: UIBarButtonItem) {
        
        do {
            try Auth.auth().signOut()
            UserDefaultsHelper.logoutUser()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
            print("Error %@", signOutError)
        }
        
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
        if let messageText = messageTextField.text, let messageSender = Auth.auth().currentUser?.email, let userUID = Auth.auth().currentUser?.uid {
            
            print("USER UID: \(getCurrentUserUID())")
            print("Email: \(messageSender)")
            
            self.persistData(messageText: messageText, messageSender: messageSender)
            
//            db.collection("users").whereField("userUID", isEqualTo: userUID).getDocuments { (querySnapshot, error) in
//                if let e = error {
//                    print(e)
//                } else {
//                    if let snapshotDocs = querySnapshot?.documents {
//                        print("Quantidade de usuarios \(snapshotDocs.count)")
//
//                        for doc in snapshotDocs {
//                            print(doc.data())
////                            let data = doc.data()
//
//                            self.persistData(messageText: messageText, messageSender: messageSender)
//                        }
//                    }
//                }
//            }
            
        }
    }
    
    private func getCurrentUserUID() -> String {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let request: NSFetchRequest<CoreUser> = CoreUser.fetchRequest()
        
        var userUID = ""
        do {
            let users = try context.fetch(request)
            userUID = users.first?.uid ?? ""
        } catch {
            print("Erro ao buscar o usuario \(error)")
        }
        
        return userUID
    }
    
//   Outra maneira de persistir a data "createdAt": FieldValue.serverTimestamp()
    private func persistData(messageText: String, messageSender: String) {
        db.collection("messages").addDocument(data: ["text": messageText,
                                                     "sender": messageSender,
                                                     "createdAt": Date().timeIntervalSince1970]) { (error) in
            if let e = error {
                print(e)
            } else {
                print("Mensagem armazenada com sucesso!")
                self.messageTextField.text = ""
            }
        }
    }
    
    private func loadMessages() {
        db.collection("messages").order(by: "createdAt").addSnapshotListener { (querySnapshot, error) in
            self.messages = []
            if let e = error {
                print(e)
            } else {
                if let snapshotDocs = querySnapshot?.documents {
                    for doc in snapshotDocs {
                        let data = doc.data()
                        
                        if let messageText = data["text"] as? String, let messageSender = data["sender"] as? String {
                            let newMessage = Message(sender: messageSender, messageLabel: messageText)
                            self.messages.append(newMessage)
                        }
                    }
                    
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                        
                        // messages = [1, 2, 3]
                        // index    =  0  1  2  X
                        // count = 3
                        
                        if self.messages.count > 0 {
                            let indexPath = IndexPath(row: self.messages.count - 1, section: 0)
                            self.tableView.scrollToRow(at: indexPath, at: .top, animated: false)
                        }
                    }
                }
            }
        }
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

extension ChatViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        guard let localImage = info[.originalImage] as? UIImage else { return }
        
        guard let imageData: Data = localImage.jpegData(compressionQuality: 0.5) else { return }
        
        self.persistPhoto(imageData: imageData)
        
        picker.dismiss(animated: true, completion: nil)
    }
    
    private func persistPhoto(imageData: Data) {
        // Persistir a imagem no Firebase Storage
        let storageRef = Storage.storage().reference()
        
        let storageMetaData = StorageMetadata()
        storageMetaData.contentType = "image/png"
        
//        let ref = storageRef.child("imagemTeste")
        let ref = storageRef.child("imagens/imagemTeste")
        print(ref.root())
        print(ref.parent())
        
        ref.putData(imageData, metadata: storageMetaData) { (url, error) in
            if error == nil {
                ref.downloadURL { (url, error) in
                    print("URL da imagem \(String(describing: url))")
                    // Salvar a imagem no CoreData
                    self.persistCoreData(imageData: imageData)
                }
            }
        }
    }
    
    private func persistCoreData(imageData: Data) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        // Atualizar a foto do usuario corrente
        guard let currentUser = User.getCurrentUser() else { return }
        
        currentUser.setValue(imageData, forKey: "photoData")
        
        do {
            try context.save()
            
            // Atualizar celulas da tableview com a nova foto
            if let image = UIImage(data: imageData) {
                self.userImage = image
                self.tableView.reloadData()
            }
        } catch {
            print("Erro ao atualizar a foto \(error)")
        }
        
    }
    
}

extension ChatViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let message = messages[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath) as! MessageCell
        
        cell.messageLabel.text = message.messageLabel
        
        // Identificar o autor da mensagem
        
        if message.sender == Auth.auth().currentUser?.email {
            cell.friendUserImageView.isHidden = true
            cell.userImageView.isHidden = false
            cell.userImageView.image = self.userImage
            cell.messageBubble.backgroundColor = UIColor(red: 192.0/255.0, green: 38.0/255.0, blue: 42.0/255.0, alpha: 1.0)
        } else {
            cell.friendUserImageView.isHidden = false
            cell.userImageView.isHidden = true
            cell.messageBubble.backgroundColor = UIColor(red: 35.0/255.0, green: 2.0/255.0, blue: 2.0/255.0, alpha: 1.0)
            cell.messageLabel.textColor = UIColor.yellow
        }
        
        return cell
    }
}
