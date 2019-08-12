//
//  ChibaViewController.swift
//  GentleGorillaApp
//
//  Created by 優樹永井 on 2018/05/15.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit


class ChibaViewController: UIViewController , UIScrollViewDelegate {
    
    // UIパーツの定義
    @IBOutlet var roraButton: UIButton!
    @IBOutlet var montaButton: UIButton!
    @IBOutlet var headerScrollView: UIScrollView!
    @IBOutlet var headerImageView: UIImageView!
    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var gorillaImageView1: UIImageView!
    @IBOutlet var gorillaImageView2: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.gorillaImageView1.layer.borderColor = UIColor.black.cgColor
        self.gorillaImageView1.layer.borderWidth = 3
        self.gorillaImageView2.layer.borderColor = UIColor.black.cgColor
        self.gorillaImageView2.layer.borderWidth = 3
        
        self.roraButton.layer.cornerRadius = roraButton.bounds.height / 2
        self.roraButton.layer.masksToBounds = true
        self.montaButton.layer.cornerRadius = montaButton.bounds.height / 2
        self.montaButton.layer.masksToBounds = true
        
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
        headerLabel.text = "千葉市動物公園は、千葉県千葉市若葉区源町280番地にある動物公園である。千葉市都市局公園緑地部が運営する。開園当初から、世界の霊長類の飼育、特に絶滅が危惧される希少種の繁殖に力を入れ、また、猛獣を避け、小動物・草食動物・鳥類などの動物を飼育する傾向にある。"
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
    

    // ローラボタン
    @IBAction func rora() {
        if roraButton.backgroundColor == UIColor.black {
            // ボタンのbackgroundcolorをyellowにする
            roraButton.backgroundColor = UIColor.yellow
            // ボタンのtextcolorをblackにする
            roraButton.titleLabel?.textColor = UIColor.black
            
        } else if roraButton.backgroundColor == UIColor.yellow {
            // ボタンのbackgroundcolorをyellowにする
            roraButton.backgroundColor = UIColor.black
            // ボタンのtextcolorをblackにする
            roraButton.titleLabel?.textColor = UIColor.yellow
        }

        
        
        
    }
    
    // モンタボタン
    @IBAction func monta() {
        if montaButton.backgroundColor == UIColor.black {
            // ボタンのbackgroundcolorをyellowにする
            montaButton.backgroundColor = UIColor.yellow
            // ボタンのtextcolorをblackにする
            montaButton.titleLabel?.textColor = UIColor.black
            
        } else if montaButton.backgroundColor == UIColor.yellow {
            // ボタンのbackgroundcolorをyellowにする
            montaButton.backgroundColor = UIColor.black
            // ボタンのtextcolorをblackにする
            montaButton.titleLabel?.textColor = UIColor.yellow
        }
        
    }

}
