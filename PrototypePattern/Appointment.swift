//
//  Appointment.swift
//  PrototypePattern
//
//  Created by 蘇健豪1 on 2020/1/2.
//  Copyright © 2020 Oyster. All rights reserved.
//

import Foundation

class Appointment: NSObject, NSCopying {
    
    var name: String
    var day: String
    var place: String
    
    init(name: String, day: String, place: String) {
        self.name = name
        self.day = day
        self.place = place
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        Appointment(name: self.name, day: self.day, place: self.place)
    }
    
}
