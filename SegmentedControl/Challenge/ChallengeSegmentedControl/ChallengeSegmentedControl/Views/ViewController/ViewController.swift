//
//  ViewController.swift
//  ChallengeSegmentedControl
//
//  Created by Rafael Nunes Rios on 10/20/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    var developers = [Developer]()
    var people = [Person]()
    var tableContent: [Person] = []
    var tableIndex: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MyTableViewCell.nib(), forCellReuseIdentifier: MyTableViewCell.identifier)
        
        createDevelopers()
        createPeople()
        tableContent = developers
    }
    
    @IBAction func mySegmentedControl(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            tableContent = developers
            tableIndex = 0
        case 1:
            tableContent = people
            tableIndex = 1
        default:
            break
        }
        
        tableView.reloadData()
    }
    
    private func createDevelopers() {
        developers.append(Developer(photoName: "developer", name: "Helena"))
        developers.append(Developer(photoName: "developer", name: "Rafael"))
        developers.append(Developer(photoName: "developer", name: "Maria"))
        developers.append(Developer(photoName: "developer", name: "Joao"))
    }
    
    private func createPeople() {
        people.append(Person(photoName: "person", name: "Gloria"))
        people.append(Person(photoName: "person", name: "Carlos"))
        people.append(Person(photoName: "person", name: "Renata"))
        people.append(Person(photoName: "person", name: "Pedro"))
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableIndex == 0 {
            
            if let view = UIStoryboard(name: "Developer", bundle: nil).instantiateInitialViewController() as? DeveloperViewController {
                view.developer = tableContent[indexPath.row]
                
                navigationController?.pushViewController(view, animated: true)
            }
            
        }else {
            
            if let viewModal = UIStoryboard(name: "Person", bundle: nil).instantiateInitialViewController() as? PersonViewController {
                viewModal.person = tableContent[indexPath.row]
                
                present(viewModal, animated: true, completion: nil)
            }
        }
        
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableContent.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as! MyTableViewCell
        
        cell.person = tableContent[indexPath.row]
        cell.setup()
        
        return cell
        
    }
}
