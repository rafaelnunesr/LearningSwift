//
//  UserTableViewCell.swift
//  tableView
//
//  Created by Rafael Nunes Rios on 10/11/20.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userPhoto: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userEmailLabel: UILabel!
    
    var user: User?
    
    static var identifier = "UserTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "UserTableViewCell", bundle: nil)
    }
    
    func setup() {
        if let user = user {
            setUserImage(photoAsString: user.photoAsString)
            setUserName(userName: user.name)
            setUserEmail(userEmail: user.email)
        }
    }
    
    private func setUserImage(photoAsString photo: String) {
        userPhoto.image = UIImage(named: photo)
        userPhoto.layer.cornerRadius = userPhoto.frame.size.width / 2
    }
    
    private func setUserName(userName name: String) {
        userNameLabel.text = name
    }
    
    private func setUserEmail(userEmail email: String) {
        userEmailLabel.text = email
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
