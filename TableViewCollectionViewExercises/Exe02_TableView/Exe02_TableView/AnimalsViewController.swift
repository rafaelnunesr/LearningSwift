//
//  ViewController.swift
//  Exe02_TableView
//
//  Created by Rafael Rios on 10/1/20.
//

import UIKit

class AnimalsViewController: UIViewController {

    @IBOutlet weak var tableViewAnimals: UITableView!
    
    var arrayAnimals = [Animal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewAnimals.delegate = self
        tableViewAnimals.dataSource = self
        
        startArrayAnimals()
    }
    
    private func startArrayAnimals() {
        
        arrayAnimals.append(Animal(name: "Toto", photo: "pet.png", breed: "Retrievers", weight: 10.5, specie: "Dog"))
        
        arrayAnimals.append(Animal(name: "Chips", photo: "pet.png", breed: "Abyssinian", weight: 4.5, specie: "Cat"))
        
        arrayAnimals.append(Animal(name: "Lila", photo: "pet.png", breed: "Aegean", weight: 3.7, specie: "Cat"))
        
        arrayAnimals.append(Animal(name: "Lion", photo: "pet.png", breed: "Poodles", weight: 4.3, specie: "Dog"))
        
        arrayAnimals.append(Animal(name: "Lika", photo: "pet.png", breed: "American Bobtail", weight: 5.5, specie: "Cat"))
        
        arrayAnimals.append(Animal(name: "Super", photo: "pet.png", breed: "French Bulldogs", weight: 10.5, specie: "Dog"))
        
        arrayAnimals.append(Animal(name: "Big", photo: "pet.png", breed: "Beagles", weight: 9.3, specie: "Dog"))
        
        arrayAnimals.append(Animal(name: "Toto", photo: "pet.png", breed: "British Longhair", weight: 5.8, specie: "Cat"))
        
        arrayAnimals.append(Animal(name: "Winner", photo: "pet.png", breed: "Bulldogs", weight: 6.2, specie: "Dog"))
        
        arrayAnimals.append(Animal(name: "Brave", photo: "pet.png", breed: "Chartreux", weight: 6.1, specie: "Cat"))
        
    }


}

