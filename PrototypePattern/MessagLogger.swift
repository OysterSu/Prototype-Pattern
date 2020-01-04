//
//  MessagLogger.swift
//  PrototypePattern
//
//  Created by 蘇健豪1 on 2020/1/5.
//  Copyright © 2020 Oyster. All rights reserved.
//

import Foundation

class MessageLogger {
    var messages: [Message] = []

    func logMessage(msg: Message) {
        if let detailed = msg as? DetailedMessage {
            messages.append(DetailedMessage(to: detailed.to, subject: detailed.subject, from: detailed.from))
        } else {
            messages.append(Message(to: msg.to, subject: msg.subject))
        }
    }

    func proccessMessages(callback: @escaping (Message) -> Void ) {
        for msg in messages {
            callback(msg)
        }
    }
}
