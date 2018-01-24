//
//  LoginViewController.swift
//  ComtradeGramFinal
//
//  Created by Predrag Jevtic on 1/24/18.
//  Copyright © 2018 com.comtrade.Gram. All rights reserved.
//

import UIKit
import SwiftInstagram

class LoginViewController: UIViewController {

    @IBOutlet weak var loginBttn: UIButton! 

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        if Instagram.shared.isAuthenticated {
            self.performSegue(withIdentifier: "openDashboard", sender: self)
            return
        }

        self.loginBttn.isHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    func isInputDataValid() -> Bool {
//
//        if (self.usernameTxt.text?.count)! < 3 {
//            return false
//        }
//
//        if (self.passwordTxt.text?.count)! < 6 {
//            return true
//        }
//
//        return true
//    }

    @IBAction func submitLogin() {
//        if false == self.isInputDataValid() {
//            return
//        }
        Instagram.shared.login(from: self.navigationController!, success: {
            // Do your stuff here ...
            self.performSegue(withIdentifier: "openDashboard", sender: self)
        }, failure: { error in
            print(error.localizedDescription)
        })

    }
}
