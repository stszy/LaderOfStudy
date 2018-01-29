//
//  WKWebViewController.swift
//  LaderOfStudy
//
//  Created by xiaoYu on 29/01/2018.
//  Copyright © 2018 XiaoYu. All rights reserved.
//

import UIKit
import WebKit

class WKWebViewController: UIViewController {
    
    var webView: WKWebView!
    var progressView: UIProgressView!
    var website = ""
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "Open", style: UIBarButtonItemStyle.plain, target: self, action: #selector(openTapped))

        let url = URL.init(string: website)
        webView.load(URLRequest.init(url: url!))
        webView.allowsBackForwardNavigationGestures = true
//        webView.addObserver(self, forKeyPath: "estimatedProgress", options: .new, context: nil)
        
//        progressView = UIProgressView(progressViewStyle: .default)
//        progressView.sizeToFit()
//        let progressButton = UIBarButtonItem(customView: progressView)
        
        
//        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
//        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(UIWebView.reload))
//        toolbarItems = [progressButton,spacer, refresh]
//        navigationController?.isToolbarHidden = false
    }
    
    deinit {
//        webView.removeObserver(self, forKeyPath: "estimatedProgress", context: nil)
    }
    
    @objc func openTapped() {
        let ac = UIAlertController(title: "Open page...", message: nil, preferredStyle: .actionSheet)
        ac.addAction(UIAlertAction(title: "apple.com", style: .default, handler: openPage))
        ac.addAction(UIAlertAction.init(title: "hackingwithswift.com", style: .default, handler: openPage))
        ac.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(ac, animated: true, completion: nil)
    }
    func openPage(action: UIAlertAction!) {
        let url = URL(string: "https://" + action.title!)!
        webView.load(URLRequest(url: url))
    }
    
    @objc func refreshTapped() {
        webView.reload()
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
//        if keyPath == "estimatedProgress" {
//            progressView.progress = Float(webView.estimatedProgress)
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension WKWebViewController:WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
//    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
//        let url = navigationAction.request.url
//        if let host = url!.host {
//            if host.range(of: website) != nil {
//                decisionHandler(.allow)
//                return
//            }
//        }
//        decisionHandler(.cancel)
//    }
}
