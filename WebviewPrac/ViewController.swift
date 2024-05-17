////
////  ViewController.swift
////  WebviewPrac
////
////  Created by Chun-Li Cheng on 2022/8/16.
////
//
//import UIKit
//import WebKit
//
//// For Home Assistant WebView
//class ViewController: UIViewController {
//    
//    private var swipeLeftGestureRecognizer: UISwipeGestureRecognizer!
//    private var swipeRightGestureRecognizer: UISwipeGestureRecognizer!
//    private lazy var webView = {
//        // 設定在安全框內
//        let webView = WKWebView(frame: view.safeAreaLayoutGuide.layoutFrame)
//
//        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        webView.scrollView.contentInsetAdjustmentBehavior = .never
//        
//        swipeLeftGestureRecognizer = 
//        UISwipeGestureRecognizer(target: self,
//                                 action: #selector(handleSwipeLeft))
//        swipeLeftGestureRecognizer.direction = .left
//        swipeRightGestureRecognizer = 
//        UISwipeGestureRecognizer(target: self,
//                                 action: #selector(handleSwipeRight))
//        swipeRightGestureRecognizer.direction = .right
//        
//        webView.addGestureRecognizer(swipeLeftGestureRecognizer)
//        webView.addGestureRecognizer(swipeRightGestureRecognizer)
//        
//        return webView
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//    }
//
//    @IBAction func buttonTapped(_ sender: UIButton) {
//        view.addSubview(self.webView)
//
//
//    }
//    
//
//
//    
//    @objc private func handleSwipeLeft() {
//        if webView.canGoForward {
//            webView.goForward()
//        }
//    }
//
//    @objc private func handleSwipeRight() {
//
//        if webView.canGoBack {
//            webView.goBack()
//        } else {
//            
//            UIView.animate(withDuration: 0.3, 
//                           animations: {
//                self.webView.alpha = 0.0
//            }) { _ in
//                self.webView.removeFromSuperview()
//                self.webView.alpha = 1.0
//            }
//        }
//    }
//    
//}
//
//extension ViewController: WKNavigationDelegate {
//    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
////        let cssString = "::-webkit-scrollbar { width: 0 !important }"
////        let jsString = "var style = document.createElement('style'); style.innerHTML = '\(cssString)'; document.head.appendChild(style);"
////        webView.evaluateJavaScript(jsString, completionHandler: nil)
//        
////        webView.evaluateJavaScript("document.body.style.backgroundColor = '#D3D3D3';", completionHandler: { (result, error) in
////            if let error = error {
////                print("Error: \(error.localizedDescription)")
////            } else {
////                print("Success!")
////            }
////        })
//        
////        webView.evaluateJavaScript("var newElement = document.createElement('div');newElement.innerHTML = 'Hello, world!'; document.body.appendChild(newElement);", completionHandler: { (result, error) in
////            if let error = error {
////                print("Error: \(error.localizedDescription)")
////            } else {
////                print("Success!")
////            }
////        })
//
//    }
//}
//
