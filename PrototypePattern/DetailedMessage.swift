//
//  DetailedMessage.swift
//  PrototypePattern
//
//  Created by 蘇健豪1 on 2020/1/5.
//  Copyright © 2020 Oyster. All rights reserved.
//

import Foundation

class DetailedMessage: Message {
    var from: String
    
    init(to: String, subject: String, from: String) {
        self.from = from
        super.init(to: to, subject: subject)  // 為什麼 super.init 不能放前面？
    }
}
