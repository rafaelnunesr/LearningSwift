//
//  ViewController.swift
//  CustumizedCell
//
//  Created by Rafael Rios on 9/28/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewDevelopers: UITableView!
    
    var arrayDevelopers = [Developer]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewDevelopers.delegate = self
        tableViewDevelopers.dataSource = self
        
        arrayDevelopers.append(Developer(name: "Rafael", email: "rafael@email.com", photo: "developer.png"))
    }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayDevelopers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "developer", for: indexPath) as! DeveloperCell
        
        cell.setup(developer: arrayDevelopers[indexPath.row])
        
        return cell
    }
    
}
