//
//  ViewController.swift
//  tableView
//
//  Created by Rafael Nunes Rios on 10/11/20.
//

import UIKit

class UserViewController: UIViewController {
    
    @IBOutlet weak var userTable: UITableView!
    
    var arrayUsers = [User]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        userTable.register(UserTableViewCell.nib(), forCellReuseIdentifier: UserTableViewCell.identifier)
        userTable.delegate = self
        userTable.dataSource = self
        
        arrayUsers.append(User(name: "Rafael", email: "rafael@email.com", photoAsString: "user.png"))
    }


}


extension UserViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let achieveAction = UIContextualAction(style: .normal, title: "Achieve") { (action, view, success) in
            success(true)
        }
        achieveAction.backgroundColor = .blue
        
        let saveAction = UIContextualAction(style: .normal, title: "Save") { (action, view, success) in
            success(true)
        }
        saveAction.backgroundColor = .systemGreen
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, view, success) in
            success(true)
        }
        deleteAction.backgroundColor = .red

            return UISwipeActionsConfiguration(actions: [deleteAction, achieveAction, saveAction])
        }
    
}

extension UserViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayUsers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: UserTableViewCell.identifier, for: indexPath) as! UserTableViewCell
        
        cell.user = arrayUsers[indexPath.row]
        cell.setup()
        
        return cell
        
    }
    
}
