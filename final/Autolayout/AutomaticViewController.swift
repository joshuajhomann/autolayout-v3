//
//  AutomaticViewController.swift
//  Autolayout
//
//  Created by Joshua Homann on 5/10/17.
//  Copyright © 2017 josh. All rights reserved.
//
// This idea came from Rayfix: https://github.com/rayfix/MultilineDemo


import UIKit

class AutomaticViewController: UIViewController {
    // MARK: IBOutlet
    @IBOutlet weak var tableView: UITableView!
    // MARK: Variables
    fileprivate var data: [Int] = stride(from: 0, to: 10, by: 1).map {$0}
    // MARK: Constants
    // MARK: UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = AutomaticTableViewCell.estimatedHeight
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    deinit {
    }
    // MARK: Instance Methods
    // MARK: IBAction
}

extension AutomaticViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AutomaticTableViewCell.reuseIdentifier, for: indexPath) as! AutomaticTableViewCell
        return cell
    }
}

extension AutomaticViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) as? AutomaticTableViewCell else {
            return
        }
        tableView.beginUpdates()
        cell.toggleExpansion()
        tableView.endUpdates()
    }
}
