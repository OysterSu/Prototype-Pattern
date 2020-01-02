//
//  Monster.swift
//  PrototypePattern
//
//  Created by 蘇健豪1 on 2020/1/2.
//  Copyright © 2020 Oyster. All rights reserved.
//

import Foundation

final class Monster: Copying {
    
    var health: Int
    var level: Int
    
    required init(health: Int, level: Int) {
        self.health = health
        self.level = level
    }
    
    convenience init(_ prototype: Monster) {
        self.init(health: prototype.health, level: prototype.level)
    }
    
}
