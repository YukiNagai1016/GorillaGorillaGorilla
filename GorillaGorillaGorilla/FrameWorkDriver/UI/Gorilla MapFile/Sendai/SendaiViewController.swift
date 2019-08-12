//
//  SendaiViewController.swift
//  GentleGorillaApp
//
//  Created by 優樹永井 on 2018/05/15.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit


class SendaiViewController: UIViewController , UIScrollViewDelegate {
    
    // UIパーツの定義
    @IBOutlet var donButton: UIButton!
    @IBOutlet var headerScrollView: UIScrollView!
    @IBOutlet var headerImageView: UIImageView!
    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var gorillaImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.gorillaImageView.layer.borderColor = UIColor.black.cgColor
        self.gorillaImageView.layer.borderWidth = 3
        self.donButton.layer.cornerRadius = donButton.bounds.height / 2
        self.donButton.layer.masksToBounds = true
        
        
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
        headerLabel.frame.size = CGSize(width:200,height:120)
        headerLabel.center.x = self.view.frame.width*3/2
        headerLabel.center.y = headerScrollView.center.y-64
        headerLabel.text = "仙台市八木山動物公園は、仙台市太白区にある仙台市立の動物園である。仙台市都心部からやや近い青葉山丘陵にある八木山の上に位置する。当園の向かい側には遊園地の八木山ベニーランドがあり、また青葉山の仙台城へは八木山橋を渡ってすぐである。"
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
    

    // ドンボタン
    @IBAction func don() {
        if donButton.backgroundColor == UIColor.black {
        // ボタンのbackgroundcolorをyellowにする
        donButton.backgroundColor = UIColor.yellow
        // ボタンのtextcolorをblackにする
        donButton.titleLabel?.textColor = UIColor.black
        
        } else if donButton.backgroundColor == UIColor.yellow {
            // ボタンのbackgroundcolorをyellowにする
            donButton.backgroundColor = UIColor.black
            // ボタンのtextcolorをblackにする
            donButton.titleLabel?.textColor = UIColor.yellow
        }
        
        
    }
    


}
