//
//  Introfilm.swift
//  Solcelle
//
//  Created by Mariel Aulie Hinderaker on 13/09/2021.
//  Copyright © 2021 Mariel Aulie Hinderaker. All rights reserved.
//

import UIKit
import WebKit

class Introfilm: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!
    

    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }


    override func viewDidLoad() {
        let url = URL(string: "https://player.vimeo.com/video/242221898?h=617f970dbc&autoplay=1")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
