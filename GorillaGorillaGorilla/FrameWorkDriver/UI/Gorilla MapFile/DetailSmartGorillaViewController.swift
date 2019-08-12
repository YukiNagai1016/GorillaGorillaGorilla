//
//  DetailSmartGorillaViewController.swift
//  GorillaGorillaGorilla
//
//  Created by 優樹永井 on 2018/06/06.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit

class DetailSmartGorillaViewController: UIViewController {

    // 変数の定義
    var selectedTitle: String!
    var selectedImageName: UIImage!
    var selectedName: String!
    var selectedSex: String!
    var selectedType: String!
    var selectedBirthDay: String!
    var selectedLiving: String!
    var selectedDescription: String!
    var selectedPersonality: String!
    
    
    
    
    // UIパーツの定義
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var detailTitleLabel: UILabel!
    @IBOutlet var detailImageView: UIImageView!
    @IBOutlet var detailNameLabel: UILabel!
    @IBOutlet var detailSexLabel: UILabel!
    @IBOutlet var detailTypeLabel: UILabel!
    @IBOutlet var detailBirthDayLabel: UILabel!
    @IBOutlet var detailLivingLabel: UILabel!
    @IBOutlet var detailDescriptionTextView: UITextView!
    @IBOutlet var detailPersonalityTextView: UITextView!
    @IBOutlet weak var filterScrollView: UIScrollView!
    
    //UIViewクラスからインスタンス生成
    let coverView = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.detailImageView.layer.borderColor = UIColor.black.cgColor
        self.detailImageView.layer.borderWidth = 2
        
        
        // 名前と画像を表示させる
        detailTitleLabel.text = selectedTitle
        detailImageView.image = selectedImageName
        detailNameLabel.text = selectedName
        detailSexLabel.text = selectedSex
        detailTypeLabel.text = selectedType
        detailBirthDayLabel.text = selectedBirthDay
        detailLivingLabel.text = selectedLiving
        detailDescriptionTextView.text = selectedDescription
        detailPersonalityTextView.text = selectedPersonality
        
        
        // 表示窓のサイズと位置を設定
        scrollView.frame.size = CGSize(width: 375, height: 420)
        
        // 中身の大きさを設定
        scrollView.contentSize = CGSize(width: 375, height: 575)
        
        //coverViewの配置する座標とサイズを設定
        coverView.frame = CGRect(x: 0,
                                 y: 0,
                                 width: 120,
                                 height: 120)
        
        //myImageView上にcoverViewを配置
        detailImageView.addSubview(coverView)
        //ScrollViewのコンテンツサイズの設定
        filterScrollView.contentSize = CGSize(width: 730, height: 100)
        
        //8つのButton、UIView、Labelをセット
        setEffectGroup(x: CGFloat(10), action: #selector(DetailGorillaListViewController.tappedOriginalBtn(_:)), color: UIColor.clear, text: "Original")
        setEffectGroup(x: CGFloat(100), action: #selector(DetailGorillaListViewController.tappedRedBtn(_:)), color: UIColor.red, text: "Red")
        setEffectGroup(x: CGFloat(190), action: #selector(DetailGorillaListViewController.tappedGreenBtn(_:)), color: UIColor.green, text: "Green")
        setEffectGroup(x: CGFloat(280), action: #selector(DetailGorillaListViewController.tappedBlueBtn(_:)), color: UIColor.blue, text: "Blue")
        setEffectGroup(x: CGFloat(370), action: #selector(DetailGorillaListViewController.tappedYellowBtn(_:)), color: UIColor.yellow,  text: "Yellow")
        setEffectGroup(x: CGFloat(460), action: #selector(DetailGorillaListViewController.tappedPurpleBtn(_:)), color: UIColor.purple, text: "Purple")
        setEffectGroup(x: CGFloat(550), action: #selector(DetailGorillaListViewController.tappedCyanBtn(_:)), color: UIColor.cyan, text: "Cyan")
        setEffectGroup(x: CGFloat(640), action: #selector(DetailGorillaListViewController.tappedWhiteBtn(_:)), color: UIColor.white, text: "White")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @objc func tappedOriginalBtn(_ sender: UIButton){
        print("OriginalButtonがタップされた。")
        //coverViewの背景色をclear
        coverView.backgroundColor = UIColor.clear
        //coverViewの透明度を0.1に設定
        coverView.alpha = 0.1
    }
    @objc func tappedRedBtn(_ sender: UIButton){
        print("RedButtonがタップされた。")
        //coverViewの背景色を赤に設定
        coverView.backgroundColor = UIColor.red
        //coverViewの透明度を0.1に設定
        coverView.alpha = 0.1
    }
    
    @objc func tappedGreenBtn(_ sender: UIButton){
        print("GreenButtonがタップされた。")
        //coverViewの背景色を緑に設定
        coverView.backgroundColor = UIColor.green
        //coverViewの透明度を0.1に設定
        coverView.alpha = 0.1
    }
    
    @objc func tappedBlueBtn(_ sender: UIButton){
        print("BlueButtonがタップされた。")
        //coverViewの背景色を青に設定
        coverView.backgroundColor = UIColor.blue
        //coverViewの透明度を0.1に設定
        coverView.alpha = 0.1
    }
    
    @objc func tappedYellowBtn(_ sender: UIButton){
        print("YellowButtonがタップされた。")
        //coverViewの背景色を黄色に設定
        coverView.backgroundColor = UIColor.yellow
        //coverViewの透明度を0.1に設定
        coverView.alpha = 0.1
    }
    
    @objc func tappedPurpleBtn(_ sender: UIButton){
        print("PurpleButtonがタップされた。")
        //coverViewの背景色を紫に設定
        coverView.backgroundColor = UIColor.purple
        //coverViewの透明度を0.1に設定
        coverView.alpha = 0.1
    }
    
    @objc func tappedCyanBtn(_ sender: UIButton){
        print("CyanButtonがタップされた。")
        //coverViewの背景色を青緑色に設定
        coverView.backgroundColor = UIColor.cyan
        //coverViewの透明度を0.1に設定
        coverView.alpha = 0.1
    }
    
    @objc func tappedWhiteBtn(_ sender: UIButton){
        print("WhiteButtonがタップされた。")
        //coverViewの背景色を白に設定
        coverView.backgroundColor = UIColor.white
        //coverViewの透明度を0.1に設定
        coverView.alpha = 0.1
    }
    
    
    //ボタンを生成する関数
    func makeButton(x: CGFloat, action: Selector )-> UIButton{
        let button = UIButton()
        button.frame = CGRect(x: x, y: 20, width: 75, height: 75)
        button.addTarget(self, action: action, for: .touchUpInside)
        button.setBackgroundImage(selectedImageName, for: UIControl.State.normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 3.0
        return button
    }
    
    //ボタンをカバーするビューを生成する関数
    func makeButtonCoverView(color: UIColor) -> UIView {
        let buttonCoverView = UIView()
        buttonCoverView.frame = CGRect(x: 0, y: 0, width: 75, height: 75)
        buttonCoverView.backgroundColor = color
        buttonCoverView.alpha = 0.1
        buttonCoverView.isUserInteractionEnabled = false
        return buttonCoverView
    }
    
    //ラベルの生成する関数
    func makeEffectLabel(x: CGFloat, text: String) -> UILabel{
        let effectLabel = UILabel()
        effectLabel.frame = CGRect(x: x, y: 90, width: 75, height: 20)
        effectLabel.text = text
        effectLabel.font = UIFont(name: "Helvetica-Light",size: CGFloat(15))
        effectLabel.textAlignment = NSTextAlignment.center
        effectLabel.textColor = UIColor.white
        return effectLabel
    }
    
    //エフェクトのグループをセットする関数
    func setEffectGroup(x: CGFloat, action: Selector, color: UIColor, text: String){
        let originalBtn = makeButton(x: x, action: action)
        filterScrollView.addSubview(originalBtn)
        let originalBtnCoverView = makeButtonCoverView(color: color)
        originalBtn.addSubview(originalBtnCoverView)
        let originalLabel = makeEffectLabel(x: x, text: text)
        filterScrollView.addSubview(originalLabel)
    }
}
