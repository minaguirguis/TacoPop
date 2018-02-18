//
//  MainVC.swift
//  TacoPOP
//
//  Created by Mina Guirguis on 2/17/18.
//  Copyright © 2018 Mina Guirguis. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var headerView: HeaderView!

    override func viewDidLoad() {
        super.viewDidLoad()

        headerView.addDropShadow()
    }

}
