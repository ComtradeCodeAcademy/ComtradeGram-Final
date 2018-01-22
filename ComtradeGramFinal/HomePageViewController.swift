//
//  ViewController.swift
//  HomePage
//
//  Created by Tijana Gojkovic on 1/17/18.
//  Copyright © 2018 Tijana Gojkovic. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var tableView: UITableView!
    
    var posts = [Post]()
    let cellSpacingHeight: CGFloat = 5

   private func loadSamplePosts() {
        
        let profile1 = UIImage(named: "ProfileImage1")
        let profile2 = UIImage(named: "ProfileImage2")
        let profile3 = UIImage(named: "ProfileImage3")
        let postImg1 = UIImage(named: "PostImage1")
        let postImg2 = UIImage(named: "PostImage2")
        let postImg3 = UIImage(named: "PostImage3")
        
       
        guard let post1 = Post(profileImage: profile1, username: "tijanaTitja",  location: "Belgrade, Serbia", postImage: postImg1, content: "Hello, World!") else {
            fatalError("Unible to instantiate post1")
        }
    
    
        guard let post2 = Post(profileImage: profile2, username: "vekishh",  location: "Belgrade, Serbia", postImage: postImg2, content: "Hik hik") else {
            fatalError("Unible to instantiate post2")
        }
    
    
        guard let post3 = Post(profileImage: profile3, username: "mariuzza_88",  location: "Belgrade, Serbia", postImage: postImg3, content: "trep trep") else {
            fatalError("Unible to instantiate post3")
        }
    
        posts += [post1, post2, post3]
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSamplePosts()
        
    }

  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
      return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "cell"
       guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? HomePageTableViewCell else {
            fatalError("The dequeued cell is not an instance of HomePageTableViewCell.")
        }
        
        let post = posts[indexPath.row]
        
        cell.nameLabel.text = post.username
        cell.prfileImageView.image = post.profileImage
        cell.locationLabel.text = post.location
        cell.postPhotoImageView.image = post.postImage
        cell.contentTextView.text = post.content
        
        cell.layer.cornerRadius = 10
        cell.clipsToBounds = true
        cell.layer.borderWidth = 5;
        cell.layer.borderColor = UIColor.init(red:236/255.0, green:27/255.0, blue:46/255.0, alpha: 1.0).cgColor

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 350
    }
    
   /* func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
     
        return cellSpacingHeight
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: self.tableView.frame.size.width, height: cellSpacingHeight))
        
        headerView.backgroundColor = UIColor.clear
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return cellSpacingHeight
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        let footerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: self.tableView.frame.size.width, height: cellSpacingHeight))
        
        footerView.backgroundColor = UIColor.clear
        
        return footerView
    }*/
    
   
   
    @IBAction func openMessages(_ sender: Any) {
        print("open messages")
    }
    
    @IBAction func openProfile(_ sender: Any) {
        print("open profile")
    }
    
    @IBAction func openLocation(_ sender: Any) {
        print("open location")
    }
    
    @IBAction func openShare(_ sender: Any) {
        print("open share")
    }
    
    @IBAction func addLike(_ sender: Any) {
        print("add like")
    }
    
    @IBAction func addComment(_ sender: Any) {
        print("add comment")
    }
    
    @IBAction func sharePost(_ sender: Any) {
        print("share post")
    }
    
    
    
}

