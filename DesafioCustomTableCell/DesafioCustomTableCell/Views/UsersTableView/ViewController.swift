//
//  ViewController.swift
//  DesafioCustomTableCell
//
//  Created by Rafael Nunes Rios on 10/9/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usersTableView: UITableView!
    
    var arrayUsers = [User]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        usersTableView.delegate = self
        usersTableView.dataSource = self
        usersTableView.register(UserTableViewCell.nib(), forCellReuseIdentifier: UserTableViewCell.identifier)
        
        arrayUsers.append(User(firstName: "Rafael", lastName: "Rios", email: "rafael@email.com", registration: "YJOOUNNGT"))
        
    }

}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let viewModal = UIStoryboard(name: "UserDetail", bundle: nil).instantiateInitialViewController() as? UserDetailViewController{
            
                viewModal.user = arrayUsers[indexPath.row]
            
                present(viewModal, animated: true, completion: nil)
                    
                }
        
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        arrayUsers.remove(at: indexPath.row)
        tableView.reloadData()
    }
    
}


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayUsers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: UserTableViewCell.identifier, for: indexPath) as! UserTableViewCell
        
        cell.setup(user: arrayUsers[indexPath.row])
        
        return cell
        
    }
    
}

