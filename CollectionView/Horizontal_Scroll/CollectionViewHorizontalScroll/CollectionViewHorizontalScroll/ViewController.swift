//
//  ViewController.swift
//  CollectionViewHorizontalScroll
//
//  Created by Rafael Nunes Rios on 10/3/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var table: UITableView!
    
    var models = [Model]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(text: "First",
                            imageName: "image_1"))
        
        models.append(Model(text: "Second",
                            imageName: "image_2"))
        
        models.append(Model(text: "Third",
                            imageName: "image_3"))
        
        models.append(Model(text: "Fourth",
                            imageName: "image_4"))
        
        models.append(Model(text: "First",
                            imageName: "image_1"))
        
        models.append(Model(text: "Second",
                            imageName: "image_2"))
        
        models.append(Model(text: "Third",
                            imageName: "image_3"))
        
        models.append(Model(text: "Fourth",
                            imageName: "image_4"))
        
        models.append(Model(text: "First",
                            imageName: "image_1"))
        
        models.append(Model(text: "Second",
                            imageName: "image_2"))
        
        models.append(Model(text: "Third",
                            imageName: "image_3"))
        
        models.append(Model(text: "Fourth",
                            imageName: "image_4"))
        
        
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
       
    }
    
    // Table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        
        cell.configure(with: models)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }


}

struct Model {
    let text: String
    let imageName: String
    
    init(text: String, imageName: String) {
        self.text = text
        self.imageName = imageName
    }
}

