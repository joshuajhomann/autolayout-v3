//
//  MapViewController.swift
//  Autolayout
//
//  Created by Joshua Homann on 5/9/17.
//  Copyright © 2017 josh. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    // MARK: IBOutlet

    @IBOutlet weak var mapContainerView: UIView!
    @IBOutlet weak var detailContainerView: UIScrollView!
    @IBOutlet weak var panel: UIView! {
        didSet {
            panel.layer.shadowColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1).cgColor
        }
    }
    // MARK: Variables
    private var listButton: UIBarButtonItem!
    private var mapButton: UIBarButtonItem!
    // MARK: Constants
    // MARK: UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        listButton = UIBarButtonItem(image: #imageLiteral(resourceName: "icon.detail"), style: .plain, target: self, action: #selector(tap(sender:)))
        mapButton = UIBarButtonItem(image: #imageLiteral(resourceName: "icon.map"), style: .plain, target: self, action: #selector(tap(sender:)))
        navigationItem.rightBarButtonItem = listButton
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.view.backgroundColor = UIColor.clear
    }

    deinit {
    }
    // MARK: Instance Methods
    @objc private func tap(sender: UIBarButtonItem) {

        let sourceView: UIView
        let destinationView: UIView
        if sender === listButton {
            sourceView = mapContainerView
            destinationView = detailContainerView
            navigationItem.rightBarButtonItem = mapButton
        } else {
            sourceView = detailContainerView
            destinationView = mapContainerView
            navigationItem.rightBarButtonItem = listButton
        }

        UIView.transition(from: sourceView, to: destinationView, duration: 0.5, options: [.showHideTransitionViews, sender === listButton ? .transitionFlipFromRight : .transitionFlipFromLeft], completion: nil)

    }
    
    // MARK: IBAction
}
