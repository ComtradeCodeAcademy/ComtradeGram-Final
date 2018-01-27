//
//  PhotoVC.swift
//  SearchVC
//
//  Created by Marija Grujic on 1/16/18.
//  Copyright © 2018 Marija Grujic. All rights reserved.
//
import UIKit

class PhotoVC: UIViewController {
    
    @IBOutlet var imageview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view = UIView()
        view.backgroundColor = UIColor.white
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
