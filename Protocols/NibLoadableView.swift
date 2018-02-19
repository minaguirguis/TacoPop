//
//  NibLoadableView.swift
//  TacoPOP
//
//  Created by Mina Guirguis on 2/18/18.
//  Copyright © 2018 Mina Guirguis. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}

//we can implement this instead of using a string for the nib file 
