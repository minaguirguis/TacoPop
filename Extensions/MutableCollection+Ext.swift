//
//  MutableCollection+Ext.swift
//  TacoPOP
//
//  Created by Mina Guirguis on 2/27/18.
//  Copyright © 2018 Mina Guirguis. All rights reserved.
//

import Foundation

extension MutableCollection where Index == Int { //extending only where a mutable index has an integer
    mutating func shuffle() {
        if count < 2 {return }
        
        for i in startIndex ..< endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
            guard i != j else {continue}
            self.swapAt(i, j)//just swapping these around
        }
    }
}
