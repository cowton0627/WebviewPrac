//
//  SecondViewController.swift
//  WebviewPrac
//
//  Created by Chun-Li Cheng on 2022/8/16.
//

import UIKit
import WebKit

class SecondViewController: UIViewController {
//    @IBOutlet weak var webView: WKWebView!
    
    private var swipeLeftGestureRecognizer: UISwipeGestureRecognizer!
    private var swipeRightGestureRecognizer: UISwipeGestureRecognizer!
    private var webView = WKWebView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
//        webView = WKWebView(frame: view.safeAreaLayoutGuide.layoutFrame)
//        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        webView.scrollView.contentInsetAdjustmentBehavior = .never
        
        webView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(webView)

//        webView.backgroundColor = .orange
        
        NSLayoutConstraint.activate([
            webView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            webView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            webView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
        
        swipeLeftGestureRecognizer = 
        UISwipeGestureRecognizer(target: self,
                                 action: #selector(handleSwipeLeft))
        swipeLeftGestureRecognizer.direction = .left
        swipeRightGestureRecognizer = 
        UISwipeGestureRecognizer(target: self,
                                 action: #selector(handleSwipeRight))
        swipeRightGestureRecognizer.direction = .right
        
        webView.addGestureRecognizer(swipeLeftGestureRecognizer)
        webView.addGestureRecognizer(swipeRightGestureRecognizer)


        if let url = URL(string: "https://www.apple.com/") {
            let request = URLRequest(url: url)

            webView.load(request)
        }
        
    }
    
    @objc private func handleSwipeLeft() {
        if webView.canGoForward {
            webView.goForward()
        }
    }

    @objc private func handleSwipeRight() {

        if webView.canGoBack {
            webView.goBack()
            
        } else {
            
            UIView.animate(withDuration: 0.3, 
                           animations: {
                self.webView.alpha = 0.0
            }) { _ in
                self.webView.removeFromSuperview()
                self.webView.alpha = 1.0
            }
        }
    }


}
