//
//  SearchViewController.swift
//  Autolayout
//
//  Created by Joshua Homann on 5/10/17.
//  Copyright © 2017 josh. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    // MARK: IBOutlet
    @IBOutlet var viewsToHide: [UIView]!
    @IBOutlet weak var cancelButton: UIButton!

    // MARK: Variables
    // MARK: Constants
    // MARK: UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    deinit {
    }
    // MARK: Instance Methods
    func toggleViews(expandSearch: Bool) {
        UIView.animate(withDuration: 2) {
            self.viewsToHide.forEach { $0.isHidden = expandSearch }
            self.cancelButton.isHidden = !expandSearch
        }
    }
    // MARK: IBAction
    @IBAction func tapCancel() {
        view.endEditing(true)
    }
}

extension SearchViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        toggleViews(expandSearch: true)
    }

    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
        toggleViews(expandSearch: false)
    }
}
