//
//  WebViewController.swift
//  iRSS
//
//  Created by Hugo on 6/4/15.
//  Copyright (c) 2015 HugoZhang33. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!

    var urlString : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string: urlString!)
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
    }
}
