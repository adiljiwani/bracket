//
//  Message.swift
//  bracket
//
//  Created by Adil Jiwani on 2017-11-16.
//  Copyright © 2017 Adil Jiwani. All rights reserved.
//

import Foundation

class Message {
    private var _content: String
    private var _senderId: String
    
    var content: String {
        return _content
    }
    
    var senderid: String {
        return _senderId
    }
    
    init(content: String, senderId: String) {
        self._content = content
        self._senderId = senderId
    }
    
    
}
