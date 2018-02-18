//
//  DropShadow.swift
//  TacoPOP
//
//  Created by Mina Guirguis on 2/17/18.
//  Copyright © 2018 Mina Guirguis. All rights reserved.
//

import UIKit

protocol DropShadow {}

extension DropShadow where Self: UIView {
    func addDropShadow() {
        //implemet
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
}
