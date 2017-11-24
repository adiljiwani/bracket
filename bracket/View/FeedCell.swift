//
//  FeedCell.swift
//  bracket
//
//  Created by Adil Jiwani on 2017-11-16.
//  Copyright © 2017 Adil Jiwani. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var contentLbl: UILabel!
    
    func configureCell(profileImage: UIImage, email: String, content: String) {
        self.profileImg.image = profileImage
        self.emailLbl.text = email
        self.contentLbl.text = content
        
    }
    
}
