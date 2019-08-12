//
//  MyGorillaNewsViewController.swift
//  GorillaGorillaGorilla
//
//  Created by 優樹永井 on 2018/06/12.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit

class MyGorillaNewsViewController: UIViewController , UITableViewDelegate, UITableViewDataSource, UIWebViewDelegate {
    
    var gorillaNewsItems = ["スマホを認識するゴリラ", "白いゴリラ", "イケメンゴリラ" , "ゴリラ × チューリップ", "野生のゴリラに遭遇", "グラブル × ゴリラ", "ゴリラに襲われる", "くすぐられる赤ちゃん", "人間っぽい歩き方", "水浴びするゴリラ", "ゴリラネタまとめ", "日本の動物園まとめ",""]
    var gorillaNewsImages = ["gorillahand.jpg", "whiteGorilla.jpeg", "IMG_23961.jpg", "チューリップゴリラ.png", "dangerGorilla.jpg", "グラブルゴリラ.jpg", "ゴリラに襲われる.jpg", "babyGorilla.jpg", "walkingGorilla.jpg", "水浴びゴリラ.png", "hamadaGorilla.jpg", "gorilla2.jpg",""]
    var gorillaNewsURL = ["https://rocketnews24.com/2017/11/20/983223/", "https://matome.naver.jp/odai/2137067891744268501", "https://matome.naver.jp/odai/2143615355293052601", "https://news.biglobe.ne.jp/trend/0531/jtn_180531_4309996741.html", "https://news.biglobe.ne.jp/it/0519/lfh_180519_6063073913.html", "https://news.biglobe.ne.jp/trend/0531/gad_180531_5621652975.html", "https://www.sankei.com/life/news/180320/lif1803200038-n1.html", "https://rocketnews24.com/2017/12/28/999722/", "https://rocketnews24.com/2018/03/28/1037006/", "https://rocketnews24.com/2017/06/28/918638/", "https://matome.naver.jp/odai/2145748802879687401?page=2", "https://www.goriluckey.com/archives/20161217_zoo-with-gorilla.html",""]
    
    var tableView: UITableView = UITableView()
    var webView:UIWebView = UIWebView()
    
    var goButton:UIButton!
    
    var backButton:UIButton!
    
    var cancelButton:UIButton!
    
    var dotsView:DotsLoader! = DotsLoader()

    override func viewDidLoad() {
        super.viewDidLoad()

        //背景画像をつくる
        let imageView = UIImageView()
        imageView.frame = self.view.bounds
        imageView.image = UIImage(named: "albumGorilla47.jpg")
        imageView.alpha = 0.6
        imageView.contentMode = UIViewContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        self.view.addSubview(imageView)
        
        //tableViewを作成する
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height - 54.0)
        tableView.backgroundColor = UIColor.clear
        self.view.addSubview(tableView)
        
        //webView
        webView.frame = tableView.frame
        webView.delegate = self
        webView.scalesPageToFit = true
        webView.contentMode = .scaleAspectFit
        self.view.addSubview(webView)
        webView.isHidden = true
        
        //1つ進むボタン
        goButton = UIButton()
        goButton.frame = CGRect(x: self.view.frame.size.width - 50, y:self.view.frame.size.height - 128 , width: 50, height: 50)
        goButton.setImage(UIImage(named:"go.png"), for: .normal)
        goButton.addTarget(self, action: #selector(nextPage), for: .touchUpInside)
        self.view.addSubview(goButton)
        
        //戻るボタン
        backButton = UIButton()
        backButton.frame = CGRect(x: 10, y:self.view.frame.size.height - 128, width: 50, height: 50)
        backButton.setImage(UIImage(named:"back.png"), for: .normal)
        backButton.addTarget(self, action: #selector(backPage), for: .touchUpInside)
        self.view.addSubview(backButton)
        
        //キャンセルボタン
        cancelButton = UIButton()
        cancelButton.frame = CGRect(x: 10, y:80, width: 50, height: 50)
        cancelButton.setImage(UIImage(named:"cancel.jpg"), for: .normal)
        cancelButton.addTarget(self, action: #selector(cancel), for: .touchUpInside)
        self.view.addSubview(cancelButton)
        
        
        goButton.isHidden = true
        backButton.isHidden = true
        cancelButton.isHidden = true
        
        
        //ドッツビュー
        dotsView.frame = CGRect(x: 0, y: self.view.frame.size.height/3, width: self.view.frame.size.width, height: 100)
        dotsView.dotsCount = 5
        dotsView.dotsRadius = 10
        self.view.addSubview(dotsView)
        
        dotsView.isHidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gorillaNewsItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")
        
        cell.selectionStyle = .none
        cell.backgroundColor = UIColor.clear
        cell.textLabel?.text = gorillaNewsItems[indexPath.row] as? String
        cell.textLabel?.textColor = UIColor.black
        cell.imageView?.image = UIImage(named: gorillaNewsImages[indexPath.row])
        cell.imageView?.layer.borderColor = UIColor.black.cgColor
        cell.imageView?.layer.borderWidth = 3
        
        cell.textLabel?.font = UIFont(name: "ZinHenaBokuryu-RCF", size: 20)
        
        return cell
    }
    
    // セルが選択された時の処理
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //WebViewを表示する
        let linkURL = gorillaNewsURL[indexPath.row]
        
        let url:URL = URL(string:linkURL)!
        let urlRequest = NSURLRequest(url: url)
        webView.loadRequest(urlRequest as URLRequest)
    }
    
    //高さを指定
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 135
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        
        dotsView.isHidden = false
        dotsView.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        
        dotsView.isHidden = true
        dotsView.stopAnimating()
        webView.isHidden = false
        goButton.isHidden  = false
        backButton.isHidden = false
        cancelButton.isHidden = false
        
    }
    
    //webViewを1ページ進める
    @objc func nextPage(){
        
        webView.goForward()
    }
    
    //webViewを1ページ戻す
    @objc func backPage(){
        
        webView.goBack()
        
    }
    
    //webViewを隠す
    @objc func cancel(){
        
        webView.isHidden = true
        goButton.isHidden = true
        backButton.isHidden = true
        cancelButton.isHidden = true
        
    }
}
