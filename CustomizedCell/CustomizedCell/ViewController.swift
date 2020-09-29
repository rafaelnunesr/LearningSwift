//
//  ViewController.swift
//  CustumizedCell
//
//  Created by Rafael Rios on 9/28/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewDevelopers: UITableView!
    
    var developers = Developers()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addDevelopersToStart()
        
        tableViewDevelopers.delegate = self
        tableViewDevelopers.dataSource = self
        
    }
    
    private func addDevelopersToStart() {
        developers.addNewDeveloper(name: "Rafael", email: "rafael@email.com", photo: "developer.jpeg")
        developers.addNewDeveloper(name: "Joaquina", email: "joaquina@email.com", photo: "developer.jpeg")
        developers.addNewDeveloper(name: "Manuella", email: "manuella@email.com", photo: "developer.jpeg")
        developers.addNewDeveloper(name: "Jeremias", email: "jeremias@email.com", photo: "developer.jpeg")
        developers.addNewDeveloper(name: "Maria", email: "maria@email.com", photo: "developer.jpeg")
    }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        developers.arrayDevelopers.remove(at: indexPath.row)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return developers.arrayDevelopers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "developer", for: indexPath) as! DeveloperCell
        
        cell.setup(developer: developers.arrayDevelopers[indexPath.row])
        
        return cell
    }
    
}
