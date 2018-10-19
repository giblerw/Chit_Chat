//
//  AuthVC.swift
//  chitchat
//
//  Created by Weston Gibler on 10/8/18.
//  Copyright © 2018 Weston Gibler. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func emailSigninButtonPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    
    @IBAction func gmailSigninButtonPressed(_ sender: Any) {
    }
    
    @IBAction func facebookSigninButtonPressed(_ sender: Any) {
    }
}
