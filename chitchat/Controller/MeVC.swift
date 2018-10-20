//
//  MeVC.swift
//  chitchat
//
//  Created by Weston Gibler on 10/19/18.
//  Copyright © 2018 Weston Gibler. All rights reserved.
//

import UIKit
import Firebase

class MeVC: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.emailLabel.text = Auth.auth().currentUser?.email
    }
    
    @IBAction func logoutButtonPressed(_ sender: Any) {
        let logoutPopup = UIAlertController(title: "Logout?", message: "Are you sure you want to logout?", preferredStyle: .actionSheet)
        let logoutAction = UIAlertAction(title: "Logout?", style: .destructive) { (buttonTapped) in
            do {
                try Auth.auth().signOut()
                let authVC = self.storyboard?.instantiateViewController(withIdentifier: "AuthVC") as? AuthVC
                self.present(authVC!, animated: true, completion: nil)
            } catch {
                print(error)
            }
        }
        logoutPopup.addAction(logoutAction)
        present(logoutPopup, animated: true, completion: nil)
    }
    
}
