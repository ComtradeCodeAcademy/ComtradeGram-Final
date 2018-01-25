//
//  ObjectPost.swift
//  HomePage
//
//  Created by Tijana Gojkovic on 1/18/18.
//  Copyright © 2018 Tijana Gojkovic. All rights reserved.
//

import Foundation
import UIKit

class Post {
    
    //MARK: Properties
    
    var profileImage: UIImage?
    var username: String
    var location: String
    var postImage: UIImage?
    var content: String
    
    //MARK: Initialization
    
    init?(profileImage: UIImage?, username: String,  location: String, postImage: UIImage?, content: String) {
        
        self.profileImage = profileImage
        self.username = username
        self.location = location
        self.postImage = postImage
        self.content = content
    }
}



