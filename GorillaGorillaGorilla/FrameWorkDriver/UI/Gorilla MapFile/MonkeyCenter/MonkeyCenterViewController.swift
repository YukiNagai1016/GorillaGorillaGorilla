//
//  MonkeyCenterViewController.swift
//  GentleGorillaApp
//
//  Created by 優樹永井 on 2018/05/15.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit


class MonkeyCenterViewController: UIViewController , UIScrollViewDelegate {
   
    // UIパーツの定義
    @IBOutlet var taroButton: UIButton!
    @IBOutlet var headerScrollView: UIScrollView!
    @IBOutlet var headerImageView: UIImageView!
    @IBOutlet var profileImageView: UIImageView!
     @IBOutlet var gorillaImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.gorillaImageView.layer.borderColor = UIColor.black.cgColor
        self.gorillaImageView.layer.borderWidth = 3
        self.taroButton.layer.cornerRadius = taroButton.bounds.height / 2
        self.taroButton.layer.masksToBounds = true
        
        self.profileImageView.layer.borderColor = UIColor.black.cgColor
        self.profileImageView.layer.borderWidth = 2
        
        headerScrollView.delegate = self
        
        headerScrollView.contentSize = CGSize(width: self.view.frame.width*2, height: headerScrollView.frame.height)
        
        let headerLabel = makeHeaderLabel()
        headerScrollView.addSubview(headerLabel)
        setHeaderImageView()
        
        headerScrollView.isPagingEnabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        headerScrollView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: headerScrollView.contentOffset.x * 0.6 / self.view.frame.width)
        print("contentOffset: \(headerScrollView.contentOffset)")
    }
    
    func makeHeaderLabel() -> UILabel {
        let headerLabel = UILabel()
        headerLabel.frame.size = CGSize(width:200,height:100)
        headerLabel.center.x = self.view.frame.width*3/2
        headerLabel.center.y = headerScrollView.center.y-64
        headerLabel.text = "公益財団法人日本モンキーセンターが運営する、世界屈指のサル類動物園。霊長類の飼育展示種数は、約60種900頭と世界最多！霊長類の特徴を活かした展示やガイド＆イベント、キュレーターによる博物館活動など、一味ちがった動物園を楽しめる。"
        headerLabel.font = UIFont(name: "HirakakuProN-W6", size: 12)
        headerLabel.textColor = UIColor.white
        headerLabel.textAlignment = NSTextAlignment.left
        headerLabel.numberOfLines = 0
        return headerLabel
    }
    
    
    func setHeaderImageView() {
        headerImageView.layer.cornerRadius = 5
        headerImageView.layer.borderWidth = 2
        headerImageView.layer.borderColor = UIColor.white.cgColor
    }

    // タロウボタン
    @IBAction func taro() {
        if taroButton.backgroundColor == UIColor.black {
            // ボタンのbackgroundcolorをyellowにする
            taroButton.backgroundColor = UIColor.yellow
            // ボタンのtextcolorをblackにする
            taroButton.titleLabel?.textColor = UIColor.black
            
        } else if taroButton.backgroundColor == UIColor.yellow {
            // ボタンのbackgroundcolorをyellowにする
            taroButton.backgroundColor = UIColor.black
            // ボタンのtextcolorをblackにする
            taroButton.titleLabel?.textColor = UIColor.yellow
        }
    }

}
