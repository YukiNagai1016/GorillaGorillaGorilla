//
//  BiglobeNewsViewController.swift
//  GorillaGorillaGorilla
//
//  Created by 優樹永井 on 2018/06/12.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit
import WebKit
import Social

class BiglobeNewsViewController: UIViewController , WKNavigationDelegate {
    
    //WkWebViewクラスのインスタンスを生成
    var myWkWebView = WKWebView()
    
    var goButton:UIButton!
    
    var backButton:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //背景画像をつくる
        let imageView = UIImageView()
        imageView.frame = self.view.bounds
        imageView.image = UIImage(named: "albumGorilla62.jpg")
        imageView.alpha = 0.7
        imageView.contentMode = UIViewContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        self.view.addSubview(imageView)
        
        //myWkWebViewのサイズを設定
        myWkWebView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height-108)
        
        //画面にmyWkWebViewを配置
        view.addSubview(myWkWebView)
        
        //WebページのURLから、URLRequestのインスタンスを生成し、WkWebViewに読み込む。
        let myURL = URL(string: "https://news.biglobe.ne.jp/list/011/088/%E3%82%B4%E3%83%AA%E3%83%A9.html")
        let myURLRequest = URLRequest(url: myURL!)
        myWkWebView.load(myURLRequest)
        
        //デリゲート先をView Controllerクラスに設定
        myWkWebView.navigationDelegate = self
        
        //1つ進むボタン
        goButton = UIButton()
        goButton.frame = CGRect(x: self.view.frame.size.width - 50, y:self.view.frame.size.height - 128 , width: 50, height: 50)
        goButton.setImage(UIImage(named:"go.png"), for: .normal)
        goButton.addTarget(self, action: #selector(nextPage), for: .touchUpInside)
        self.myWkWebView.addSubview(goButton)
        
        //戻るボタン
        backButton = UIButton()
        backButton.frame = CGRect(x: 10, y:self.view.frame.size.height - 128, width: 50, height: 50)
        backButton.setImage(UIImage(named:"back.png"), for: .normal)
        backButton.addTarget(self, action: #selector(backPage), for: .touchUpInside)
        self.myWkWebView.addSubview(backButton)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Webページの読み込みが開始したタイミングで、インジケータを表示
    func webView(webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    //Webページの読み込みが完了したタイミングで、インジケータを非表示
    func webView(webView: WKWebView, didFinishNavigation navigation: WKNavigation!) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    
    func observeValue(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutableRawPointer) {
        
    }
    
    
    //webViewを1ページ進める
    @objc func nextPage(){
        
        myWkWebView.goForward()
    }
    
    //webViewを1ページ戻す
    @objc func backPage(){
        
        myWkWebView.goBack()
        
    }
    

}
