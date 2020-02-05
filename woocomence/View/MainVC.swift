//
//  ViewController.swift
//  woocomence
//
//  Created by Admin on 8/21/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit
import WebKit

class MainVC: UIViewController, WKNavigationDelegate{

    @IBOutlet weak var ProductView: UIView!
    @IBOutlet weak var VipView: UIView!
    @IBOutlet weak var ContactView: UIView!
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self
        loadWebView()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setready()
    }
    func setready(){
        ProductView.layer.borderWidth = 1
        ProductView.layer.masksToBounds = false
        ProductView.layer.borderColor = UIColor.lightGray.cgColor
        ProductView.layer.cornerRadius = ProductView.frame.height*0.1
        ProductView.clipsToBounds = true
        
        VipView.layer.borderWidth = 1
        VipView.layer.masksToBounds = false
        VipView.layer.borderColor = UIColor.lightGray.cgColor
        VipView.layer.cornerRadius = VipView.frame.height*0.1
        VipView.clipsToBounds = true
        
        ContactView.layer.borderWidth = 1
        ContactView.layer.masksToBounds = false
        ContactView.layer.borderColor = UIColor.lightGray.cgColor
        ContactView.layer.cornerRadius = ContactView.frame.height*0.1
        ContactView.clipsToBounds = true
        
        webView.layer.borderWidth = 1
        webView.layer.masksToBounds = false
        webView.layer.borderColor = UIColor.lightGray.cgColor
        webView.layer.cornerRadius = webView.frame.height*0.05
        webView.clipsToBounds = true
        
        
    }
    
    func loadWebView() {
        let url = URL(string: "https://www.amazon.com/limm")!
        webView.load(URLRequest(url: url))
    }
    
    @IBAction func ProductBtn(_ sender: Any) {
        print("productbtn")
    }
    
    @IBAction func VipBtn(_ sender: Any) {
        print("vipbtn")
    }
    
    @IBAction func ContactBtn(_ sender: Any) {
        print("contactbtn")
    }
}

