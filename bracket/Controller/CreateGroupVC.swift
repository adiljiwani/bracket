//
//  CreateGroupVC.swift
//  bracket
//
//  Created by Adil Jiwani on 2017-11-21.
//  Copyright © 2017 Adil Jiwani. All rights reserved.
//

import UIKit

class CreateGroupVC: UIViewController {

    @IBOutlet weak var titleTextField: InsetTextField!
    @IBOutlet weak var descriptionTextField: InsetTextField!
    @IBOutlet weak var emailSearchTextField: InsetTextField!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var doneBtn: UIButton!
    @IBOutlet weak var groupMemberLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closePressed(_ sender: Any) {
    }
    
    @IBOutlet weak var donePressed: UIButton!
}
