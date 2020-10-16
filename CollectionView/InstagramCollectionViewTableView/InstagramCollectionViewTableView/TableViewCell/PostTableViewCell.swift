//
//  PostTableViewCell.swift
//  InstagramCollectionViewTableView
//
//  Created by Rafael Nunes Rios on 10/15/20.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    static var identifier = "PostTableViewCell"
    
    var post: Post?
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postdescription: UILabel!
    
    static func nib() -> UINib {
        return UINib(nibName: "PostTableViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setupPost() {
        if let post = post {
            setProfileImage(image: post.photoAsString)
            setProfileName(name: post.user)
            setPostImage(image: post.photoAsString)
            setPostDescription(description: post.comment)
        }
    }
    
    private func setProfileImage(image: String) {
        profileImage.image = UIImage(named: image)
        profileImage.layer.cornerRadius = profileName.frame.size.width / 2
    }
    
    private func setProfileName(name: String) {
        profileName.text = name
    }
    
    private func setPostImage(image: String) {
        postImage.image = UIImage(named: image)
    }
    
    private func setPostDescription(description: String) {
        postdescription.text = description
    }
    
}
