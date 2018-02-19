//
//  UICollectionView+Ext.swift
//  TacoPOP
//
//  Created by Mina Guirguis on 2/18/18.
//  Copyright © 2018 Mina Guirguis. All rights reserved.
//

import UIKit

extension UICollectionView {
    func registar<T: UICollectionViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
        
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: NSIndexPath) -> T where T: ReusableView{
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        return cell
    }
    
}

extension UICollectionViewCell: ReusableView{}
//^^all collection views in our code will have this fuctionality
