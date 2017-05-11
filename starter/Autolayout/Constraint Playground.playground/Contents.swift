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
        let webview = WKWebView()
        webview.load(URLRequest(url: URL(string: "http://www.apple.com")!))



    }

    //MARK: Instance Methods
}

extension UIView {
    func constrainToSuperView() {
    }
}

let viewController = ViewController()
viewController.view.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = viewController.view




