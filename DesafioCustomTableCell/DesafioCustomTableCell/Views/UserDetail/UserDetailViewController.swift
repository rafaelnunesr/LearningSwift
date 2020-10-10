//
//  UserDetailViewController.swift
//  DesafioCustomTableCell
//
//  Created by Rafael Nunes Rios on 10/9/20.
//

import UIKit

class UserDetailViewController: UIViewController {


    @IBOutlet weak var userProfileImage: UIImageView!
    @IBOutlet weak var userNameTextLabel: UILabel!
    @IBOutlet weak var userEmailTextLabel: UILabel!
    @IBOutlet weak var userRegistrationTextLabel: UILabel!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        if let user = user {
            setUserProfileImage(imageAsString: "user.jpeg")
            setUserName(firstName: user.firstName, lastName: user.lastName)
            setUserEmail(email: user.email)
            setUserRegistration(registration: user.registration)
        }
        
    }
    
    private func setUserName(firstName: String, lastName: String) {
        userNameTextLabel.text = "Name " + firstName + " " + lastName
    }
    
    private func setUserEmail(email: String) {
        userEmailTextLabel.text = "Email: " + email
    }
    
    private func setUserProfileImage(imageAsString: String) {
        userProfileImage.image = UIImage(named: imageAsString)
        userProfileImage.layer.cornerRadius = userProfileImage.frame.size.width / 2
    }
    
    private func setUserRegistration(registration: String) {
        userRegistrationTextLabel.text = "Registration: " + registration
    }
    

}
