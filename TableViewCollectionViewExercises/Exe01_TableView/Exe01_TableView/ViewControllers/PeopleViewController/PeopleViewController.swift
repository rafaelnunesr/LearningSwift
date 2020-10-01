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

        setupArrayPeople()
        
        tableViewPeople.delegate = self
        tableViewPeople.dataSource = self
        
    }
    
    func setupArrayPeople() {
        arrayPeople.append(Person(photo: "avatarMan.png", name: "Rafael Rios", responsability: "Manager", email: "rafael@email.com"))
        
        arrayPeople.append(Person(photo: "avatarWoman.png", name: "Helena Smith", responsability: "CEO", email: "helena@email.com"))
        
        arrayPeople.append(Person(photo: "avatarWoman.png", name: "Josefa Jones", responsability: "Supervisor", email: "josefa@email.com"))
        
        arrayPeople.append(Person(photo: "avatarWoman.png", name: "Diana Davis", responsability: "Human Resources", email: "diana@email.com"))
        
        arrayPeople.append(Person(photo: "avatarMan.png", name: "Jose Thomas", responsability: "Full Developer", email: "jose@email.com"))
        
        arrayPeople.append(Person(photo: "avatarWoman.png", name: "Maria White", responsability: "Quality Control", email: "maria@email.com"))
        
        arrayPeople.append(Person(photo: "avatarMan.png", name: "Peter Martin", responsability: "iOS Developer", email: "peter@email.com"))
        
        arrayPeople.append(Person(photo: "avatarWoman.png", name: "Rose Lee", responsability: "Android Developer", email: "rose@email.com"))
        
        arrayPeople.append(Person(photo: "avatarWoman.png", name: "Julia Allen", responsability: "Accounting", email: "julia@email.com"))
        
        arrayPeople.append(Person(photo: "avatarMan.png", name: "Paul King", responsability: "Commercial", email: "paul@email.com"))
        
        arrayPeople.append(Person(photo: "avatarMan.png", name: "Jorge Scott", responsability: "Customer Service", email: "jorge@email.com"))
        
        arrayPeople.append(Person(photo: "avatarWoman.png", name: "Bianca Blue", responsability: "IT - Support", email: "bianca@email.com"))
        
        arrayPeople.append(Person(photo: "avatarWoman.png", name: "Cindy Brown", responsability: "Customer Service", email: "cindy@email.com"))
        
        arrayPeople.append(Person(photo: "avatarMan.png", name: "Robert Trump", responsability: "iOS - Developer Senior", email: "robert@email.com"))
        
        arrayPeople.append(Person(photo: "avatarMan.png", name: "Martin Jerry", responsability: "Customer Service", email: "martin@email.com"))
    }
    
}
