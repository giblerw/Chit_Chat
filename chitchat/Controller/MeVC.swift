//
//  MeVC.swift
//  chitchat
//
//  Created by Weston Gibler on 10/19/18.
//  Copyright © 2018 Weston Gibler. All rights reserved.
//

import UIKit

class MeVC: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutButtonPressed(_ sender: Any) {
    }
    
}
