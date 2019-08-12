//
//  JapanMapViewController.swift
//  GentleGorillaApp
//
//  Created by 優樹永井 on 2018/05/10.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit

// 変数の定義
var totalPoint: Int = 0
var sendaiPoint: Int = 0
var uenoPoint: Int = 0
var higashiyamaPoint: Int = 0
var chibaPoint: Int = 0
var hamamatsuPoint: Int = 0
var kyotoPoint: Int = 0
var monkeyCenterPoint: Int = 0

class JapanMapViewController: UIViewController {
    
    // UIパーツの定義
    @IBOutlet var sendaiButton: UIButton!
    @IBOutlet var uenoButton: UIButton!
    @IBOutlet var higashiButton: UIButton!
    @IBOutlet var chibaButton: UIButton!
    @IBOutlet var hamamatsuButton: UIButton!
    @IBOutlet var kyotoButton: UIButton!
    @IBOutlet var monkeyCenterButton: UIButton!
    @IBOutlet var smartGorillaLabel: UILabel!
    @IBOutlet var smartGorillaImageView: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 角を丸める
        self.sendaiButton.layer.cornerRadius = self.sendaiButton.bounds.height / 2
        self.sendaiButton.layer.masksToBounds = true
        self.uenoButton.layer.cornerRadius = self.uenoButton.bounds.height / 2
        self.uenoButton.layer.masksToBounds = true
        self.higashiButton.layer.cornerRadius = self.higashiButton.bounds.height / 2
        self.higashiButton.layer.masksToBounds = true
        self.chibaButton.layer.cornerRadius = self.chibaButton.bounds.height / 2
        self.chibaButton.layer.masksToBounds = true
        self.hamamatsuButton.layer.cornerRadius = self.hamamatsuButton.bounds.height / 2
        self.hamamatsuButton.layer.masksToBounds = true
        self.kyotoButton.layer.cornerRadius = self.kyotoButton.bounds.height / 2
        self.kyotoButton.layer.masksToBounds = true
        self.monkeyCenterButton.layer.cornerRadius = self.monkeyCenterButton.bounds.height / 2
        self.monkeyCenterButton.layer.masksToBounds = true
        self.smartGorillaLabel.layer.cornerRadius = self.smartGorillaLabel.bounds.height / 2
        self.smartGorillaLabel.layer.masksToBounds = true
        self.smartGorillaImageView.layer.cornerRadius = self.smartGorillaImageView.bounds.height / 2
        self.smartGorillaImageView.layer.masksToBounds = true
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // donButtonやmomotaroButtonのように関数を作る
    // 押されたら色が変わり, 特典追加
    
    

}
