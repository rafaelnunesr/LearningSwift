//
//  PeopleViewController.swift
//  Exe01_TableView
//
//  Created by Rafael Rios on 9/30/20.
//

import UIKit

class PeopleViewController: UIViewController {

    @IBOutlet weak var tableViewPeople: UITableView!
    
    var arrayPeople = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewPeople.delegate = self
        tableViewPeople.dataSource = self
    }
    
}

extension PeopleViewController: UITableViewDelegate {
    
}

extension PeopleViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayPeople.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
