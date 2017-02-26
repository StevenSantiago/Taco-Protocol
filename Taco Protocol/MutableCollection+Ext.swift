//
//  MutableCollection+Ext.swift
//  Taco Protocol
//
//  Created by Steven Santiago on 2/25/17.
//  Copyright © 2017 Steven Santiago. All rights reserved.
//

import Foundation


extension MutableCollection where Index == Int {
    mutating func shuffle() { //mutating function uses inout param
        if count < 2 { return }
        
        for i in startIndex ..< endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
            guard i != j else { continue } // guard is used instead of if let
            swap(&self[i], &self[j])
        }
    }
}
