//
//  ReusableView.swift
//  Taco Protocol
//
//  Created by Steven Santiago on 2/25/17.
//  Copyright © 2017 Steven Santiago. All rights reserved.
//

import UIKit

protocol ReusableView : class {}

extension ReusableView where Self: UIView {
    
    static var resuseIdentifier: String { // takes name of class for reuseIdentifier 
        
        return String(describing: self)
    }
}
