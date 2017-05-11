//
//  File.swift
//  Autolayout
//
//  Created by Joshua Homann on 5/10/17.
//  Copyright © 2017 josh. All rights reserved.
//

//
//  ConstraintAnimationViewController.swift
//  Autolayout
//
//  Created by Joshua Homann on 5/10/17.
//  Copyright © 2017 josh. All rights reserved.
//

import UIKit

class ConstraintAnimationViewController: UIViewController {
    // MARK: IBOutlet


    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var widthConstraint: NSLayoutConstraint!


    // MARK: Variables
    // MARK: Constants
    // MARK: UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        heightConstraint.constant = UIScreen.main.bounds.size.height
        widthConstraint.constant = UIScreen.main.bounds.size.width
        UIView.animate(withDuration: 5) {
            self.view.layoutIfNeeded()
        }
    }

    deinit {
    }
    // MARK: Instance Methods
    // MARK: IBAction
}

