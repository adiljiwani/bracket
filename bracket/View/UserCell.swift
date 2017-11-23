//
//  UserCell.swift
//  bracket
//
//  Created by Adil Jiwani on 2017-11-22.
//  Copyright © 2017 Adil Jiwani. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {

    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var checkImg: UIImageView!
    
    var showing = false
    
    func configureCell(profileImage image: UIImage, email: String, isSelected: Bool) {
        self.profileImg.image = image
        self.emailLbl.text = email
        if isSelected {
            self.checkImg.isHidden = false
        } else {
            self.checkImg.isHidden = true
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            if !showing {
                checkImg.isHidden = false
                showing = true
            } else {
                checkImg.isHidden = true
                showing = false
            }
        }
    }

    
}
