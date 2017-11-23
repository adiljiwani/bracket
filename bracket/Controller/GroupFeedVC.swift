//
//  GroupFeedVC.swift
//  bracket
//
//  Created by Adil Jiwani on 2017-11-23.
//  Copyright © 2017 Adil Jiwani. All rights reserved.
//

import UIKit

class GroupFeedVC: UIViewController {

    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var membersLbl: UILabel!
    
    @IBOutlet weak var sendBtn: UIButton!
    @IBOutlet weak var messageTextField: InsetTextField!
    @IBOutlet weak var sendBtnView: UIView!
    
    var group : Group?
    
    func initData(forGroup group: Group) {
        self.group = group
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendBtnView.bindToKeyboard()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        groupTitleLbl.text = group?.groupTitle
        DataService.instance.getEmails(forGroup: group!) { (returnedEmails) in
            self.membersLbl.text = returnedEmails.joined(separator: ", ")
        }
    }
    
    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func sendPressed(_ sender: Any) {
    }
    
}
