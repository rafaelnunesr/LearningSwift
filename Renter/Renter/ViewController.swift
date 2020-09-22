//
//  ViewController.swift
//  Renter
//
//  Created by Rafael Rios on 9/22/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldLogo: UILabel!
    @IBOutlet weak var textFieldWelcomeMesssage: UILabel!
    @IBOutlet weak var textFieldResult: UILabel!
    
    @IBOutlet var buttons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldResult.text = ""
        setupButtonsLayout()
    }
    
    @IBAction func actionButtonBook(_ sender: Any) {
        rentBook()
    }
    
    @IBAction func actionButtonCar(_ sender: Any) {
        rentCar()
    }
        
    @IBAction func actionButtonCD(_ sender: Any) {
        rentCd()
    }
    
    @IBAction func actionButtonDVD(_ sender: Any) {
        rentDvd()
    }
    
    private func rentBook() {
        let book = Book(name: "default", itemCode: "1000475853", quantityPages: 120)
        let messageToUser: String = book.rent()
        setTextFieldResult(text: messageToUser)
    }
    
    private func rentCar() {
        let car = Car(name: "default", itemCode: "XR89203", carPlate: "GTU93T52")
        let messageToUser: String = car.rent()
        setTextFieldResult(text: messageToUser)
    }
    
    private func rentCd() {
        let cd = CD(name: "default", itemCode: "73949922", singer: "José Maltran")
        let messageToUser = cd.rent()
        setTextFieldResult(text: messageToUser)
    }
    
    private func rentDvd() {
        let dvd = DVD(name: "default", itemCode: "73949WHU", videoFormat: "MPEG 4")
        let messageToUser = dvd.rent()
        setTextFieldResult(text: messageToUser)
    }
    
    private func setTextFieldResult(text: String) {
        textFieldResult.text = text
    }
    
    private func setupButtonsLayout() {
        for button in buttons {
            button.setBackgroundColorButton(color: UIColor.systemPurple)
            button.setTextColorButton(color: UIColor.white)
            button.setCornerRadiusButton()
            button.setFontSize()
        }
    }


}

