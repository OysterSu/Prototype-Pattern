//
//  Copy.swift
//  PrototypePattern
//
//  Created by 蘇健豪1 on 2020/1/2.
//  Copyright © 2020 Oyster. All rights reserved.
//

import Foundation

protocol Copying: class {
  
    init(_ prototype: Self)
    
}

extension Copying {
    
    func copy() -> Self {
        print("1")
        return type(of: self).init(self)
    }
    
}
