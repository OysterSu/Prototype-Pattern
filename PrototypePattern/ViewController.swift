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
    }
    
}

