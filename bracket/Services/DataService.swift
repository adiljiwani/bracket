//
//  DataService.swift
//  bracket
//
//  Created by Adil Jiwani on 2017-11-13.
//  Copyright © 2017 Adil Jiwani. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = Database.database().reference()

class DataService {
    static let instance = DataService()
    
    private var _REF_BASE = DB_BASE
    private var _REF_USERS = DB_BASE.child("users")
}
