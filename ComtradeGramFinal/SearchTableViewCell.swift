//
//  SearchTableViewCell.swift
//  SearchVC
//
//  Created by Marija Grujic on 1/18/18.
//  Copyright © 2018 Marija Grujic. All rights reserved.
//

import UIKit

class SearchTableViewCell: UITableViewCell {
    
    @IBOutlet var postView: UIView!
    @IBOutlet var image1: UIImageView!
    @IBOutlet var image2: UIImageView!
    @IBOutlet var image3: UIImageView!
    @IBOutlet var locationLbl: UILabel!
   
    
    @IBOutlet var addFriendBttn: UIButton!
    
    
    @IBOutlet var locationBttn: UIButton!
    @IBOutlet var profilePhoto: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

  
    
    
    
}
