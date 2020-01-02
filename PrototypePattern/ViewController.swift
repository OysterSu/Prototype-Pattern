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
        let monster2 = monster.copy()
        monster2.health = 800
        
        print(monster.health)
        print(monster2.health)
    }
    
}

