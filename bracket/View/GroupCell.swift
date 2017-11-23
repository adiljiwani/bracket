//
//  GroupCell.swift
//  bracket
//
//  Created by Adil Jiwani on 2017-11-23.
//  Copyright © 2017 Adil Jiwani. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {

    @IBOutlet weak var groupTitleLbl: UILabel!
    
    @IBOutlet weak var groupDescLbl: UILabel!
    
    @IBOutlet weak var memberNumLbl: UILabel!
    
    func configureCell(title: String, description: String, memberCount: Int) {
        self.groupTitleLbl.text = title
        self.groupDescLbl.text = description
        self.memberNumLbl.text = "\(memberCount) members."
    }
}
