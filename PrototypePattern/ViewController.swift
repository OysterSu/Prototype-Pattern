//
//  ViewController.swift
//  PrototypePattern
//
//  Created by 蘇健豪1 on 2020/1/2.
//  Copyright © 2020 Oyster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let monster = Monster(health: 700, level: 37)
        print(monster.health)
        
        let monster2 = monster
        monster2.health = 800
        print(monster.health)
        print(monster2.health)
        
        let monster3 = monster.copy()
        monster3.health = 900
        print(monster.health)
        print(monster3.health)
        
        let appointment = Appointment(name: "Bob", day: "Mon", place: "Joe's Bar")
        let appointment2 = appointment.copy()
        appointment.name = "Tom"
        print(appointment.name)
        print((appointment2 as! Appointment).name)
        
        let logger = MessageLogger()

        let message = Message(to: "Joe", subject: "Hello")
        logger.logMessage(msg: message)

        message.to = "Bob"
        message.subject = "Free for dinner?"
        logger.logMessage(msg: message)

        logger.proccessMessages { (message) in
            print("Message - To: \(message.to) Subject: \(message.subject)")
        }
    }
    
}

