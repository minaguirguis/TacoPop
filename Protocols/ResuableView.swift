//
//  ResuableView.swift
//  TacoPOP
//
//  Created by Mina Guirguis on 2/18/18.
//  Copyright © 2018 Mina Guirguis. All rights reserved.
//

import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView{//constrains this to a UIView
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

//^^ we did this so we can keep up with all the identifiers
