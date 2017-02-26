//
//  NibLoadableView.swift
//  Taco Protocol
//
//  Created by Steven Santiago on 2/25/17.
//  Copyright © 2017 Steven Santiago. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    static var nibName : String {
    return String(describing: self)
    }
}
