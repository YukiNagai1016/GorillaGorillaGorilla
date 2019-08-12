//
//  KyotoViewController.swift
//  GentleGorillaApp
//
//  Created by 優樹永井 on 2018/05/15.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit


class KyotoViewController: UIViewController , UIScrollViewDelegate {
    
    // UIパーツの定義
    @IBOutlet var genkiButton: UIButton!
    @IBOutlet var momotaroButton: UIButton!
    @IBOutlet var gentaroButton: UIButton!
    @IBOutlet var headerScrollView: UIScrollView!
    @IBOutlet var headerImageView: UIImageView!
    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var gorillaImageView1: UIImageView!
    @IBOutlet var gorillaImageView2: UIImageView!
    @IBOutlet var gorillaImageView3: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.gorillaImageView1.layer.borderColor = UIColor.black.cgColor
        self.gorillaImageView1.layer.borderWidth = 3
        self.gorillaImageView2.layer.borderColor = UIColor.black.cgColor
        self.gorillaImageView2.layer.borderWidth = 3
        self.gorillaImageView3.layer.borderColor = UIColor.black.cgColor
        self.gorillaImageView3.layer.borderWidth = 3
        
        self.genkiButton.layer.cornerRadius = genkiButton.bounds.height / 2
        self.genkiButton.layer.masksToBounds = true
        self.momotaroButton.layer.cornerRadius = momotaroButton.bounds.height / 2
        self.momotaroButton.layer.masksToBounds = true
        self.gentaroButton.layer.cornerRadius = gentaroButton.bounds.height / 2
        self.gentaroButton.layer.masksToBounds = true
        
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
        headerLabel.text = "京都市動物園では、木の上で過ごすことが多いニシゴリラの本来の行動を引き出すために，ポールやロープを設置し，空間を三次元で利用できるようにしている。展示場とメイン観覧エリアで，夏にはミストが放出され，熱帯雨林の環境を醸し出す工夫をしている。"
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
    

    // ゲンキボタン
    @IBAction func genki() {
        if genkiButton.backgroundColor == UIColor.black {
            // ボタンのbackgroundcolorをyellowにする
            genkiButton.backgroundColor = UIColor.yellow
            // ボタンのtextcolorをblackにする
            genkiButton.titleLabel?.textColor = UIColor.black
            
        } else if genkiButton.backgroundColor == UIColor.yellow {
            // ボタンのbackgroundcolorをyellowにする
            genkiButton.backgroundColor = UIColor.black
            // ボタンのtextcolorをblackにする
            genkiButton.titleLabel?.textColor = UIColor.yellow
        }
        
       
        
    }
    
    // モモタロウボタン
    @IBAction func momotaro() {
        if momotaroButton.backgroundColor == UIColor.black {
            // ボタンのbackgroundcolorをyellowにする
            momotaroButton.backgroundColor = UIColor.yellow
            // ボタンのtextcolorをblackにする
            momotaroButton.titleLabel?.textColor = UIColor.black
            
        } else if momotaroButton.backgroundColor == UIColor.yellow {
            // ボタンのbackgroundcolorをyellowにする
            momotaroButton.backgroundColor = UIColor.black
            // ボタンのtextcolorをblackにする
            momotaroButton.titleLabel?.textColor = UIColor.yellow
        }
        
        
        
    }
    
    // ゲンタロウボタン
    @IBAction func gentaro() {
        if gentaroButton.backgroundColor == UIColor.black {
            // ボタンのbackgroundcolorをyellowにする
            gentaroButton.backgroundColor = UIColor.yellow
            // ボタンのtextcolorをblackにする
            gentaroButton.titleLabel?.textColor = UIColor.black
            
        } else if gentaroButton.backgroundColor == UIColor.yellow {
            // ボタンのbackgroundcolorをyellowにする
            gentaroButton.backgroundColor = UIColor.black
            // ボタンのtextcolorをblackにする
            gentaroButton.titleLabel?.textColor = UIColor.yellow
        }
        
        
        
    }

}
