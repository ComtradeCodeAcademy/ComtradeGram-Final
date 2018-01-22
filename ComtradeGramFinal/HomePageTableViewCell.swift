//
//  HomePageTableViewCell.swift
//  HomePage
//
//  Created by Tijana Gojkovic on 1/17/18.
//  Copyright © 2018 Tijana Gojkovic. All rights reserved.
//

import UIKit

class HomePageTableViewCell: UITableViewCell {

    
   
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var proflieBtn: UIButton!
    @IBOutlet weak var openShareBtn: UIButton!
    @IBOutlet weak var locationBtn: UIButton!
    @IBOutlet weak var prfileImageView: UIImageView!
    @IBOutlet weak var postPhotoImageView: UIImageView!
    @IBOutlet weak var contentTextView: UITextView!
    @IBOutlet weak var likeBtn: UIButton!
    @IBOutlet weak var commentBtn: UIButton!
    @IBOutlet weak var shareBtn: UIButton!
    @IBOutlet weak var datePostLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        prfileImageView.layer.cornerRadius = prfileImageView.frame.size.width / 2
        prfileImageView.layer.masksToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
