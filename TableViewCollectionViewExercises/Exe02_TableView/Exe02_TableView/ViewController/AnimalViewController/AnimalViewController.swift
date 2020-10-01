//
//  AnimalViewController.swift
//  Exe02_TableView
//
//  Created by Rafael Rios on 10/1/20.
//

import UIKit

class AnimalViewController: UIViewController {

    @IBOutlet weak var buttonClose: UIButton!
    
    @IBOutlet weak var imageAnimal: UIImageView!
    
    @IBOutlet var textLabelTitle: [UILabel]!

    
    @IBOutlet weak var textLabelAnimalName: UILabel!
    @IBOutlet weak var textLabelAnimalBreed: UILabel!
    @IBOutlet weak var textLabelAnimalSpecie: UILabel!
    @IBOutlet weak var textLabelAnimalWeight: UILabel!
    
    var animal: Animal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    func setup() {
        setTitles()
        
        if let animal = animal {
            
            setAnimalPhoto(photo: animal.photo)
            setAnimalName(name: animal.name)
            setAnimalBreed(breed: animal.breed)
            setAnimalWeight(weight: animal.weight)
            setAnimalSpecie(specie: animal.specie)
        }
    }
    
    private func setAnimalPhoto(photo: String) {
        
        imageAnimal.image = UIImage(named: photo)
        imageAnimal.layer.cornerRadius = imageAnimal.frame.size.width / 2
        imageAnimal.clipsToBounds = true
        imageAnimal.layer.masksToBounds = true
    }

    private func setAnimalName(name: String){
        textLabelAnimalName.text = name
    }
    
    private func setAnimalBreed(breed: String) {
        textLabelAnimalBreed.text = breed
    }
    
    private func setAnimalWeight(weight: Float) {
        textLabelAnimalWeight.text = String(weight)
    }
    
    private func setAnimalSpecie(specie: String) {
        textLabelAnimalSpecie.text = specie
    }
    
    private func setTitles() {
        for label in textLabelTitle {
            label.setBold()
        }
    }
    
    
    
    @IBAction func actionButtonClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
