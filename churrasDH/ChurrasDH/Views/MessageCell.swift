//
//  MessageCell.swift
//  ChurrasDH
//
//  Created by Rodrigo Santos on 27/01/21.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var messageBubble: UIView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var profileImageUser: UIImageView!
    
    @IBOutlet weak var friendUserImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        messageBubble.layer.cornerRadius = 20
        profileImageUser.layer.cornerRadius = 20
        friendUserImageView.layer.cornerRadius = 20
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
