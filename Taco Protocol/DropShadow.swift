//
//  DropShadow.swift
//  Taco Protocol
//
//  Created by Steven Santiago on 2/25/17.
//  Copyright © 2017 Steven Santiago. All rights reserved.
//

import UIKit

protocol DropShadow {}

extension DropShadow where Self: UIView { // Self is capitol because it is needed for extensions
    func addDropShadow () {
    layer.shadowColor = UIColor.black.cgColor
    layer.shadowOpacity = 0.7
    layer.shadowOffset = CGSize.zero
    layer.shadowRadius = 5
    }
}
