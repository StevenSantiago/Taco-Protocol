//
//  Shakeable.swift
//  Taco Protocol
//
//  Created by Steven Santiago on 2/25/17.
//  Copyright © 2017 Steven Santiago. All rights reserved.
//

import UIKit


protocol Shakeable {}

extension Shakeable where Self: UIView {
    func shake() {
        let anim = CABasicAnimation(keyPath: "position")
        anim.duration = 0.005
        anim.repeatCount = 5
        anim.autoreverses = true
        anim.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4.0, y: self.center.y))
        anim.toValue  = NSValue(cgPoint: CGPoint(x:self.center.x + 4.0, y: self.center.y))
        layer.add(anim, forKey: "position")
    }
}
