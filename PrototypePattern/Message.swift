//
//  Message.swift
//  PrototypePattern
//
//  Created by 蘇健豪1 on 2020/1/5.
//  Copyright © 2020 Oyster. All rights reserved.
//

import Foundation

class Message {
    var to: String
    var subject: String
    
    init(to: String, subject: String) {
        self.to = to
        self.subject = subject
    }
}
