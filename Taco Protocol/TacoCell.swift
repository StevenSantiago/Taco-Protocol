//
//  TacoCell.swift
//  Taco Protocol
//
//  Created by Steven Santiago on 2/25/17.
//  Copyright © 2017 Steven Santiago. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, NibLoadableView, Shakeable {

    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLabel: UILabel!
    
    var taco: Taco!
    
    func configureCell(taco: Taco) {
        self.taco = taco
        tacoImage.image = UIImage(named: taco.proteinId.rawValue) // grabs enum raw value which is string
        tacoLabel.text = taco.productName
    }
}
