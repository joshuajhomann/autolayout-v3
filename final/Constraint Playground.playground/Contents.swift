//: Playground - noun: a place where people can play

import UIKit

import UIKit
import PlaygroundSupport
import WebKit

class ViewController: UIViewController {
    //MARK: Variables

    //MARK: Constants

    //MARK: UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        let blueView = WKWebView()
        blueView.load(URLRequest(url: URL(string: "http://www.apple.com")!))
        view.addSubview(blueView)
        blueView.backgroundColor = .blue
        view.layoutMargins = UIEdgeInsets(top: 0, left: 20, bottom: 10, right: 20)
        blueView.constrainToSuperViewMargins()
        let redView = UIView()
        redView.backgroundColor = UIColor.red.withAlphaComponent(0.5)
        view.addSubview(redView)
        redView.translatesAutoresizingMaskIntoConstraints = false
        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        redView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        redView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = false
        NSLayoutConstraint(item: redView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 0.66, constant: 0).isActive = true


    }

    //MARK: Instance Methods
}

extension UIView {
    func constrainToSuperViewMargins() {
        guard let superview = superview else {
            return
        }
        let margins = superview.layoutMargins
        let leadingInset = effectiveUserInterfaceLayoutDirection == .leftToRight ? margins.left : margins.right
        let trailingInset = effectiveUserInterfaceLayoutDirection == .rightToLeft ? margins.right : margins.left
        translatesAutoresizingMaskIntoConstraints = false
        let constraintInfo: [(NSLayoutAttribute, CGFloat)] = [(.top, margins.top), (.bottom, -margins.bottom), (.leading, leadingInset), (.trailing, -trailingInset)]
        constraintInfo.forEach { NSLayoutConstraint(item: self, attribute: $0.0, relatedBy: .equal, toItem: self.superview, attribute: $0.0, multiplier: 1, constant: $0.1).isActive = true }
    }
}

let viewController = ViewController()
viewController.view.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = viewController.view




