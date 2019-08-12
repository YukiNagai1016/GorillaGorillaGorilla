//
//  HigashiyamaViewController.swift
//  GentleGorillaApp
//
//  Created by 優樹永井 on 2018/05/15.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit


class HigashiyamaViewController: UIViewController , UIScrollViewDelegate {
    
    // UIパーツの定義
    @IBOutlet var syabaniButton: UIButton!
    @IBOutlet var aiButton: UIButton!
    @IBOutlet var neneButton: UIButton!
    @IBOutlet var kiyomasaButton: UIButton!
    @IBOutlet var aniButton: UIButton!
    @IBOutlet var headerScrollView: UIScrollView!
    @IBOutlet var headerImageView: UIImageView!
    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var gorillaImageView1: UIImageView!
    @IBOutlet var gorillaImageView2: UIImageView!
    @IBOutlet var gorillaImageView3: UIImageView!
    @IBOutlet var gorillaImageView4: UIImageView!
    @IBOutlet var gorillaImageView5: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.gorillaImageView1.layer.borderColor = UIColor.black.cgColor
        self.gorillaImageView1.layer.borderWidth = 3
        self.gorillaImageView2.layer.borderColor = UIColor.black.cgColor
        self.gorillaImageView2.layer.borderWidth = 3
        self.gorillaImageView3.layer.borderColor = UIColor.black.cgColor
        self.gorillaImageView3.layer.borderWidth = 3
        self.gorillaImageView4.layer.borderColor = UIColor.black.cgColor
        self.gorillaImageView4.layer.borderWidth = 3
        self.gorillaImageView5.layer.borderColor = UIColor.black.cgColor
        self.gorillaImageView5.layer.borderWidth = 3
        
        self.syabaniButton.layer.cornerRadius = syabaniButton.bounds.height / 2
        self.syabaniButton.layer.masksToBounds = true
        self.aiButton.layer.cornerRadius = aiButton.bounds.height / 2
        self.aiButton.layer.masksToBounds = true
        self.neneButton.layer.cornerRadius = neneButton.bounds.height / 2
        self.neneButton.layer.masksToBounds = true
        self.kiyomasaButton.layer.cornerRadius = kiyomasaButton.bounds.height / 2
        self.kiyomasaButton.layer.masksToBounds = true
        self.aniButton.layer.cornerRadius = aniButton.bounds.height / 2
        self.aniButton.layer.masksToBounds = true
        
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
        headerLabel.text = "東山動植物園は、愛知県名古屋市千種区東山元町の東山公園内にある市営動植物園。1937年（昭和12年）に開園した。イケメンゴリラとしてゴリラ界で一世を風靡したあのニシローランドゴリラのシャバーニが話題になった動物園である。"
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
    
    
    // シャバーニボタン
    @IBAction func syabani() {
        if syabaniButton.backgroundColor == UIColor.black {
            // ボタンのbackgroundcolorをyellowにする
            syabaniButton.backgroundColor = UIColor.yellow
            // ボタンのtextcolorをblackにする
            syabaniButton.titleLabel?.textColor = UIColor.black
            
        } else if syabaniButton.backgroundColor == UIColor.yellow {
            // ボタンのbackgroundcolorをyellowにする
            syabaniButton.backgroundColor = UIColor.black
            // ボタンのtextcolorをblackにする
            syabaniButton.titleLabel?.textColor = UIColor.yellow
        }
        
        
        
    }
    
    // アイボタン
    @IBAction func ai() {
        if aiButton.backgroundColor == UIColor.black {
            // ボタンのbackgroundcolorをyellowにする
            aiButton.backgroundColor = UIColor.yellow
            // ボタンのtextcolorをblackにする
            aiButton.titleLabel?.textColor = UIColor.black
            
        } else if aiButton.backgroundColor == UIColor.yellow {
            // ボタンのbackgroundcolorをyellowにする
            aiButton.backgroundColor = UIColor.black
            // ボタンのtextcolorをblackにする
            aiButton.titleLabel?.textColor = UIColor.yellow
        }
        
        
    }
    
    // ネネボタン
    @IBAction func nene() {
        if neneButton.backgroundColor == UIColor.black {
            // ボタンのbackgroundcolorをyellowにする
            neneButton.backgroundColor = UIColor.yellow
            // ボタンのtextcolorをblackにする
            neneButton.titleLabel?.textColor = UIColor.black
            
        } else if neneButton.backgroundColor == UIColor.yellow {
            // ボタンのbackgroundcolorをyellowにする
            neneButton.backgroundColor = UIColor.black
            // ボタンのtextcolorをblackにする
            neneButton.titleLabel?.textColor = UIColor.yellow
        }
        
        
        
    }
    
    // キヨマサボタン
    @IBAction func kiyomasa() {
        if kiyomasaButton.backgroundColor == UIColor.black {
            // ボタンのbackgroundcolorをyellowにする
            kiyomasaButton.backgroundColor = UIColor.yellow
            // ボタンのtextcolorをblackにする
            kiyomasaButton.titleLabel?.textColor = UIColor.black
            
        } else if kiyomasaButton.backgroundColor == UIColor.yellow {
            // ボタンのbackgroundcolorをyellowにする
            kiyomasaButton.backgroundColor = UIColor.black
            // ボタンのtextcolorをblackにする
            kiyomasaButton.titleLabel?.textColor = UIColor.yellow
        }
        
        
        
    }
    // アニーボタン
    @IBAction func ani() {
        if aniButton.backgroundColor == UIColor.black {
            // ボタンのbackgroundcolorをyellowにする
            aniButton.backgroundColor = UIColor.yellow
            // ボタンのtextcolorをblackにする
            aniButton.titleLabel?.textColor = UIColor.black
            
        } else if aniButton.backgroundColor == UIColor.yellow {
            // ボタンのbackgroundcolorをyellowにする
            aniButton.backgroundColor = UIColor.black
            // ボタンのtextcolorをblackにする
            aniButton.titleLabel?.textColor = UIColor.yellow
        }
        
        
        
        
    }
}
