//
//  Developers.swift
//  TableViewCollectionView
//
//  Created by Rafael Nunes Rios on 10/19/20.
//

import UIKit

class DevelopersViewController: UIViewController {

    @IBOutlet weak var developersTableView: UITableView!
    
    var developersCategory = [String]()
    var dictDevelopers: [String: [Developer]] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        developersTableView.delegate = self
        developersTableView.dataSource = self
        developersTableView.register(DeveloperTableViewCell.nib(), forCellReuseIdentifier: DeveloperTableViewCell.identifier)
        setupDevelopers()
        
    }
    
    private func setupDevelopers() {
        
        dictDevelopers["iOS"] = [Developer(name: "Rafael Nunes", photo: "user", platform: "iOS", experienceYears: 5),
        Developer(name: "Maria Candido", photo: "user", platform: "iOS", experienceYears: 10),
        Developer(name: "Marcio Gomes", photo: "user", platform: "iOS", experienceYears: 9),
        Developer(name: "Rodrigo Souza", photo: "user", platform: "iOS", experienceYears: 7),
        Developer(name: "Marcia Lima", photo: "user", platform: "iOS", experienceYears: 3),
        Developer(name: "Paulo Britto", photo: "user", platform: "iOS", experienceYears: 5),
        Developer(name: "Cris Petrona", photo: "user", platform: "iOS", experienceYears: 9)
        ]
        
        dictDevelopers["Android"] = [Developer(name: "Rafael Nunes", photo: "user", platform: "Android", experienceYears: 5),
        Developer(name: "Maria Candido", photo: "user", platform: "Android", experienceYears: 10),
        Developer(name: "Marcio Gomes", photo: "user", platform: "Android", experienceYears: 9),
        Developer(name: "Rodrigo Souza", photo: "user", platform: "Android", experienceYears: 7),
        Developer(name: "Marcia Lima", photo: "user", platform: "Android", experienceYears: 3),
        Developer(name: "Paulo Britto", photo: "user", platform: "Android", experienceYears: 5),
        Developer(name: "Cris Petrona", photo: "user", platform: "Android", experienceYears: 9)
        ]
        
        dictDevelopers["Web"] = [Developer(name: "Rafael Nunes", photo: "user", platform: "Web", experienceYears: 5),
        Developer(name: "Maria Candido", photo: "user", platform: "Web", experienceYears: 10),
        Developer(name: "Marcio Gomes", photo: "user", platform: "Web", experienceYears: 9),
        Developer(name: "Rodrigo Souza", photo: "user", platform: "Web", experienceYears: 7),
        Developer(name: "Marcia Lima", photo: "user", platform: "Web", experienceYears: 3),
        Developer(name: "Paulo Britto", photo: "user", platform: "Web", experienceYears: 5),
        Developer(name: "Cris Petrona", photo: "user", platform: "Web", experienceYears: 9)
        ]
    }

}

extension DevelopersViewController: UITableViewDelegate {
    
}

extension DevelopersViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath)
        
        return cell ?? UITableViewCell()
        
    }
}
