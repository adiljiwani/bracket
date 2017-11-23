//
//  GroupFeedCell.swift
//  bracket
//
//  Created by Adil Jiwani on 2017-11-23.
//  Copyright © 2017 Adil Jiwani. All rights reserved.
//

import UIKit

class GroupFeedCell: UITableViewCell {
    @IBOutlet weak var profileImg: UIImageView!
    
    @IBOutlet weak var contentLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    
    func configureCell(profileImage: UIImage, email: String, content: String) {
        self.profileImg.image = profileImage
        self.contentLbl.text = content
        self.emailLbl.text = email
    }
}
