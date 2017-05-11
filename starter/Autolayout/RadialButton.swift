//
//  RadialButton.swift
//  Autolayout
//
//  Created by Joshua Homann on 5/10/17.
//  Copyright © 2017 josh. All rights reserved.
//

import UIKit

class RadialMenuButton: UIButton {
    private var buttons: [UIButton] = []
    private var xConstraints: [NSLayoutConstraint] = []
    private var yConstraints: [NSLayoutConstraint] = []
    private var isContracted = true
    private let startAngle = CGFloat.pi * 1.5
    private let π = CGFloat.pi
    private let expandedRadius = CGFloat(175)
    private let animationDuration = TimeInterval(0.75)
    private let scaleMatrix = CGAffineTransform(scaleX: 0.1, y: 0.1)

    override func awakeFromNib() {
        addTarget(self, action: #selector(tapButton), for: .touchUpInside)
    }

    func setMenu(images: [UIImage]) {

    }

    @objc private func tapButton() {
        let radius = isContracted ? expandedRadius : 0
        let alpha: CGFloat = isContracted ? 1 : 0
        let count = CGFloat(buttons.count)
        let scale = isContracted ? .identity : scaleMatrix

    }
    
    
}

