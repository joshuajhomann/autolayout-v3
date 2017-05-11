//
//  RadialViewController.swift
//  Autolayout
//
//  Created by Joshua Homann on 5/10/17.
//  Copyright © 2017 josh. All rights reserved.
//

import UIKit

class RadialViewController: UIViewController {
    @IBOutlet weak var button: RadialMenuButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        button.setMenu(images: [#imageLiteral(resourceName: "m1"), #imageLiteral(resourceName: "m2"),#imageLiteral(resourceName: "m3"),#imageLiteral(resourceName: "m4"),#imageLiteral(resourceName: "m5"),#imageLiteral(resourceName: "m6")])
    }
}


