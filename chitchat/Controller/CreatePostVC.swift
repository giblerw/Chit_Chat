//
//  CreatePostVC.swift
//  chitchat
//
//  Created by Weston Gibler on 10/19/18.
//  Copyright © 2018 Weston Gibler. All rights reserved.
//

import UIKit
import Firebase

class CreatePostVC: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.delegate = self
        sendButton.bindToKeyboard()
    }

    @IBAction func sendButtonPressed(_ sender: Any) {
        if textView.text != nil && textView.text != "Say something interesting..." {
            sendButton.isEnabled = false
            DataService.instance.uploadPost(withMessage: textView.text, forUID: (Auth.auth().currentUser?.uid)! , forGroupKey: nil) { (isComplete) in
                if isComplete {
                    self.sendButton.isEnabled = true
                    self.dismiss(animated: true, completion: nil)
                } else {
                    self.sendButton.isEnabled = true
                    print("An error occurred while sending message")
                }
            }
        }
    }
    
    @IBAction func closeButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

extension CreatePostVC: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
    }
}
