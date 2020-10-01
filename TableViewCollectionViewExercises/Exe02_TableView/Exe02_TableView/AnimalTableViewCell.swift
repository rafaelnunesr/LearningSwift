//
//  AnimalTableViewCell.swift
//  Exe02_TableView
//
//  Created by Rafael Rios on 10/1/20.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewAnimal: UIImageView!
    
    @IBOutlet var textLabelTitle: [UILabel]!
    
    @IBOutlet weak var textLabelAnimalName: UILabel!
    @IBOutlet weak var textLabelAnimalBreed: UILabel!
    @IBOutlet weak var textLabelAnimalWeight: UILabel!
    @IBOutlet weak var textLabelAnimalSpecie: UILabel!
    
    var animal: Animal?
    
    func setup() {
        setBackgroundTitle()
        
        if let animal = animal {
            setAnimalPhoto(photo: animal.photo)
            setAnimalName(name: animal.name)
            setAnimalBreed(breed: animal.breed)
            setAnimalWeight(weight: animal.weight)
            setAnimalSpecie(specie: animal.specie)
        }
    }
    
    private func setAnimalPhoto(photo: String) {
        print(photo)
        imageViewAnimal.image = UIImage(named: photo)
        imageViewAnimal.layer.cornerRadius = imageViewAnimal.frame.size.width / 2
        imageViewAnimal.clipsToBounds = true
        imageViewAnimal.layer.masksToBounds = true
    }
    
    private func setAnimalName(name: String) {
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
    
    private func setBackgroundTitle() {
        for label in textLabelTitle {
            label.backgroundColor = UIColor(red: 1.00, green: 0.16, blue: 0.12, alpha: 0.05)
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
