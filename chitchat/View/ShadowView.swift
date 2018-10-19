//
//  ShadowView.swift
//  chitchat
//
//  Created by Weston Gibler on 10/8/18.
//  Copyright © 2018 Weston Gibler. All rights reserved.
//

import UIKit

class ShadowView: UIView {

    override func awakeFromNib() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = #colorLiteral(red: 0.1626744924, green: 0.1626744924, blue: 0.1626744924, alpha: 1)
        super.awakeFromNib()
    }
}
