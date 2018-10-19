//
//  FeedCell.swift
//  chitchat
//
//  Created by Weston Gibler on 10/19/18.
//  Copyright © 2018 Weston Gibler. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    func configureCell(profileImage: UIImage, email: String, content: String) {
        self.profileImage.image = profileImage
        self.emailLabel.text = email
        self.messageLabel.text = content
    }
    
}
