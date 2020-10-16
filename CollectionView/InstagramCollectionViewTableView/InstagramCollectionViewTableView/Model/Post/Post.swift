//
//  Post.swift
//  InstagramCollectionViewTableView
//
//  Created by Rafael Nunes Rios on 10/15/20.
//

import Foundation

class Post: Struct {
   
    var comment: String
    
    init(user: String, photoAsString: String, comment: String) {
        self.comment = comment
        super.init(user: user, photoAsString: photoAsString)
    }
}
