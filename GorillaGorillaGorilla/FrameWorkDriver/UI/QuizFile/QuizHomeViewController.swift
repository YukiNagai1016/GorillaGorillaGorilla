//
//  QuizHomeViewController.swift
//  GentleGorillaApp
//
//  Created by 優樹永井 on 2018/05/09.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit
import SwiftyGif

class QuizHomeViewController: UIViewController , SwiftyGifDelegate {

    // UIパーツの定義
    @IBOutlet var homeImageView: UIImageView!
    @IBOutlet var interButton1: UIButton!
    @IBOutlet var interButton2: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        self.homeImageView.layer.cornerRadius = 20
        self.homeImageView.layer.masksToBounds = true
        self.interButton1.layer.cornerRadius = interButton1.bounds.height / 2
        self.interButton1.layer.masksToBounds = true
        self.interButton2.layer.cornerRadius = interButton2.bounds.height / 2
        self.interButton2.layer.masksToBounds = true
        
        // gif画像の設定
        self.homeImageView.delegate = self
        let gif = UIImage(gifName: "gorilla-dribbble.gif", levelOfIntegrity:0.5)
        self.homeImageView.setGifImage(gif)
        let url = URL(string: "gorilla-dribbble.gif")
        self.homeImageView.setGifFromURL(url)
        
        //バー背景色
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        // rgb値で色指定する場合のコード UIColor(red: 219, green: 74, blue: 57, alpha:1)
        //バーアイテムカラー
        self.navigationController?.navigationBar.tintColor = UIColor.yellow
        //ナビゲーションタイトル文字列の変更
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.yellow]
        
        // ナビゲーションバーの曇りガラス効果オフ
        //self.navigationController!.navigationBar.isTranslucent = false
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

}
