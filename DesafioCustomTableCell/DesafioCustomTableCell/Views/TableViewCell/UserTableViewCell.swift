//
//  UserTableViewCell.swift
//  DesafioCustomTableCell
//
//  Created by Rafael Nunes Rios on 10/9/20.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    
    static let identifier = "UserTableViewCell"
    
    @IBOutlet weak var userProfileImage: UIImageView!
    @IBOutlet weak var userNameTextLabel: UILabel!
    @IBOutlet weak var userEmailTextLabel: UILabel!
    
    static func nib() -> UINib {
        return UINib(nibName: "UserTableViewCell", bundle: nil)
    }
    
    func setup(user: User) {
        setUserName(firstName: user.firstName, lastName: user.lastName)
        setUserEmail(email: user.email)
        setUserProfileImage()
    }
    
    private func setUserName(firstName: String, lastName: String) {
        userNameTextLabel.text =  firstName + " " + lastName
    }
    
    private func setUserEmail(email: String) {
        userEmailTextLabel.text = email
    }
    
    private func setUserProfileImage(imageAsString: String = "user") {
        
        userProfileImage.image = UIImage(named: imageAsString)
        userProfileImage.layer.cornerRadius = userProfileImage.frame.size.width / 2
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
