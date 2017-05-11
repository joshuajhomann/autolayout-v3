//
//  AutomaticTableViewCell.swift
//  Autolayout
//
//  Created by Joshua Homann on 5/10/17.
//  Copyright © 2017 josh. All rights reserved.
//
// This idea came from Rayfix: https://github.com/rayfix/MultilineDemo


import UIKit


class AutomaticTableViewCell: UITableViewCell {
    // MARK: IBOutlet
    @IBOutlet weak var label: UILabel!
    // MARK: Variables
    // MARK: Constants
    static let estimatedHeight = CGFloat(64)
    static let reuseIdentifier = String(describing: AutomaticTableViewCell.self)
    // MARK: UITableViewCell
    // MARK: Instance Methods
    func toggleExpansion() {
        label.numberOfLines = label.numberOfLines == 0 ? 2 : 0
    }
    // MARK: IBAction
}
