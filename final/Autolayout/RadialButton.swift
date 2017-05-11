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
        buttons = images.map { image in
            let button = UIButton()
            button.setImage(image, for: .normal)
            self.addSubview(button)
            button.translatesAutoresizingMaskIntoConstraints = false
            let xConstraint = button.centerXAnchor.constraint(equalTo: self.centerXAnchor)
            xConstraint.isActive = true
            self.xConstraints.append(xConstraint)
            let yConstraint = button.centerYAnchor.constraint(equalTo: self.centerYAnchor)
            yConstraint.isActive = true
            self.yConstraints.append(yConstraint)
            button.alpha = 0
            button.transform = scaleMatrix
            return button
        }
    }

    @objc private func tapButton() {
        let radius = isContracted ? expandedRadius : 0
        let alpha: CGFloat = isContracted ? 1 : 0
        let count = CGFloat(buttons.count)
        let scale = isContracted ? .identity : scaleMatrix
        for (index, button) in buttons.enumerated() {
            let i = CGFloat(index)
            let theta = startAngle + i * 2 * π / count
            xConstraints[index].constant = radius * cos(theta)
            yConstraints[index].constant = radius * sin(theta)

        }
        let animation = UIViewPropertyAnimator(duration: animationDuration, curve: .easeInOut) {
            self.buttons.forEach {
                $0.alpha = alpha
                $0.transform = scale
            }
            self.layoutIfNeeded()

        }
        animation.addCompletion {_ in
            self.isContracted = !self.isContracted
        }
        animation.startAnimation()
    }
    
    
}

