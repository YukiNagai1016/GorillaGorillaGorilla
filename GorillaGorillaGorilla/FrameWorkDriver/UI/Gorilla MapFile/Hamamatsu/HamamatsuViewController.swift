//
//  HamamatsuViewController.swift
//  GentleGorillaApp
//
//  Created by 優樹永井 on 2018/05/15.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit


class HamamatsuViewController: UIViewController , UIScrollViewDelegate {
    
    // UIパーツの定義
    @IBOutlet var syoButton: UIButton!
    @IBOutlet var headerScrollView: UIScrollView!
    @IBOutlet var headerImageView: UIImageView!
    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var gorillaImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.gorillaImageView.layer.borderColor = UIColor.black.cgColor
        self.gorillaImageView.layer.borderWidth = 3
        self.syoButton.layer.cornerRadius = self.syoButton.bounds.height / 2
        self.syoButton.layer.masksToBounds = true
        
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
        headerLabel.text = "霊長類の展示は、国内の動物園としては最大級で、ニシローランドゴリラやスマトラオランウータン・ゴールデンライオンタマリンなどが居り、67種970匹(2014年6月)は日本モンキーセンターに次ぐ規模である。"
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
    // ショウボタン
    @IBAction func syo() {
        if syoButton.backgroundColor == UIColor.black {
            // ボタンのbackgroundcolorをyellowにする
            syoButton.backgroundColor = UIColor.yellow
            // ボタンのtextcolorをblackにする
            syoButton.titleLabel?.textColor = UIColor.black
            
        } else if syoButton.backgroundColor == UIColor.yellow {
            // ボタンのbackgroundcolorをyellowにする
            syoButton.backgroundColor = UIColor.black
            // ボタンのtextcolorをblackにする
            syoButton.titleLabel?.textColor = UIColor.yellow
        }
        
        
    }
    
}
