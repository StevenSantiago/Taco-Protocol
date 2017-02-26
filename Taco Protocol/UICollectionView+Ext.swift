//
//  UICollectionView+Ext.swift
//  Taco Protocol
//
//  Created by Steven Santiago on 2/25/17.
//  Copyright © 2017 Steven Santiago. All rights reserved.
//

import UIKit


extension UICollectionView {
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
        
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.resuseIdentifier)
        
    }
    
    func dequeReusableCell<T: UICollectionViewCell>(forIndexPath indexPath : IndexPath) -> T where T: ReusableView {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.resuseIdentifier, for: indexPath as IndexPath) as? T
        else {
            fatalError("Could not dequeue cell with identifer: \(T.resuseIdentifier)")
        }
        return cell
    }
}


extension UICollectionViewCell: ReusableView {}
