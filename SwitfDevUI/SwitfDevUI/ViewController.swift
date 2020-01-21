//
//  ViewController.swift
//  SwitfDevUI
//
//  Created by Macx on 2020/1/19.
//  Copyright © 2020 Macx. All rights reserved.
//

import UIKit
import WebKit
import SnapKit
class ViewController: UIViewController {
    @IBOutlet weak var bgView: UIView!
    var webView=WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.bgView.backgroundColor=UIColor.red
        webView.backgroundColor=UIColor.red
        self.bgView.addSubview(webView)
        webView.snp.makeConstraints { (make) in
            make.top.equalTo(bgView.snp.top).offset(0)
             make.bottom.equalTo(bgView.snp.bottom).offset(0)
             make.left.equalTo(bgView.snp.left).offset(0)
             make.right.equalTo(bgView.snp.right).offset(0)
        }
        
        webView.load(URLRequest(url: URL(string: "https://www.baidu.com")!))
        
    }
   
}


