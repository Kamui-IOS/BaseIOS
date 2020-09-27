//
//  RegisterViewController.swift
//  Loto
//
//  Created by Nam Hoang Van on 8/30/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import UIKit
import WebKit

class RegisterViewController: BaseViewController {
    var contentString = CacheModule.sharedInstance.websiteURL
    
   
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Li Xia"
        setupView()
        
        if let config = firebaseConfig, !config.host!.isEmpty {
            onReloadWebView()
        }
    }
    
    var firebaseConfig: FirebaseModel? {
        return CacheModule.sharedInstance.getFirebaseConfig()
    }
    
    func setupView() {
        webView.isUserInteractionEnabled = false
        webView.scrollView.isScrollEnabled = false
        webView.loadHTMLString(contentString, baseURL: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(onReloadWebView), name: .didRetrieveData, object: nil)
    }

    @IBAction func onReloadWebView() {
        webView.isUserInteractionEnabled = true
        webView.scrollView.isScrollEnabled = true
        if let config = firebaseConfig, !config.host!.isEmpty {
            webView.isUserInteractionEnabled = true
            let url = URL(string: config.host ?? "")!
            let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalAndRemoteCacheData, timeoutInterval: 20.0)
            self.webView.load(request)
        }
    }

}
