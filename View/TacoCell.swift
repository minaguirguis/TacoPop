//
//  TacoCell.swift
//  TacoPOP
//
//  Created by Mina Guirguis on 2/18/18.
//  Copyright © 2018 Mina Guirguis. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell {

    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLabel: UILabel!
    
    var taco: Taco!
    
    func configureCell(taco: Taco) {//we need taco to configure the cell
        self.taco = taco
        tacoImage.image = UIImage(named: taco.proteinId.rawValue)// setting the image to raw values of enums created
        
        tacoLabel.text = taco.productName
        
    }

}
