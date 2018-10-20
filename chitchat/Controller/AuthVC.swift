//
//  AuthVC.swift
//  chitchat
//
//  Created by Weston Gibler on 10/8/18.
//  Copyright © 2018 Weston Gibler. All rights reserved.
//

import UIKit
import Firebase

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if  Auth.auth().currentUser != nil {
            dismiss(animated: true, completion: nil)
        }
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
