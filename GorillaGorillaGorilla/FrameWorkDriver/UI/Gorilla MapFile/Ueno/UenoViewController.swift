//
//  UenoViewController.swift
//  GentleGorillaApp
//
//  Created by 優樹永井 on 2018/05/15.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit


class UenoViewController: UIViewController , UIScrollViewDelegate {
    
    var gorillaImages = ["ペイントモモコ.jpg","ペイントコモモ.jpg" ,"ペイントモモカ.jpg" , "ペイントピーコ.jpg" ,"ペイントトト.jpg" ,"ペイントナナ.jpg" ,"ペイントハオコ.jpg", "ペイントリキ.jpg"]
    
    var gorillaNames = ["モモコ","コモモ","モモカ","ピーコ","トト","ナナ","ハオコ","リキ"]
    

    @IBOutlet var headerScrollView: UIScrollView!
    @IBOutlet var headerImageView: UIImageView!
    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var scrollView: UIScrollView!
    
    // ScrollScreenの高さ
    var scrollScreenHeight:CGFloat!
    // ScrollScreenの幅
    var scrollScreenWidth:CGFloat!
    
    // Totalのページ数
    var pageNum:Int!
    
    var imageWidth:CGFloat!
    var imageHeight:CGFloat!
    var screenSize:CGRect!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        //背景画像をつくる
//        let imageView = UIImageView()
//        imageView.frame = self.view.bounds
//        imageView.image = UIImage(named: "albumGorilla13.jpg")
//        imageView.alpha = 0.8
//        imageView.contentMode = UIViewContentMode.scaleAspectFill
//        self.view.sendSubview(toBack: imageView)
        
        self.profileImageView.layer.borderColor = UIColor.black.cgColor
        self.profileImageView.layer.borderWidth = 2
        
        // scrollViewのdelegate設定
        headerScrollView.delegate = self
        scrollView.delegate = self
        
        // 表示窓のサイズと位置を設定
        scrollView.frame.size = CGSize(width: 375, height: self.view.frame.height - 200)
        
        
        
        
        
        
        headerScrollView.contentSize = CGSize(width: self.view.frame.width*2, height: headerScrollView.frame.height)
        
        let headerLabel = makeHeaderLabel()
        headerScrollView.addSubview(headerLabel)
        setHeaderImageView()
        
        headerScrollView.isPagingEnabled = true
        
        
        //ScrollViewのコンテンツサイズの設定
        scrollView.contentSize = CGSize(width: 1700, height: self.view.frame.height - 180)
        
        
//        //8つのButton,Labelをセット
//        setEffectGroup(x: CGFloat(10), text: "モモコ")
//        setEffectGroup(x: CGFloat(220), text: "コモモ")
//        setEffectGroup(x: CGFloat(430), text: "モモカ")
//        setEffectGroup(x: CGFloat(640), text: "ピーコ")
//        setEffectGroup(x: CGFloat(850), text: "トト")
//        setEffectGroup(x: CGFloat(1060), text: "ナナ")
//        setEffectGroup(x: CGFloat(1270), text: "ハオコ")
//        setEffectGroup(x: CGFloat(1480), text: "リキ")
        
        screenSize = UIScreen.main.bounds
        
        // ページスクロールとするためにページ幅を合わせる
        scrollScreenWidth = screenSize.width
        
        let imageTop:UIImage = UIImage(named: gorillaImages[0])!
        pageNum = gorillaImages.count
        
        imageWidth = imageTop.size.width
        imageHeight = scrollView.bounds.height
        scrollScreenHeight = scrollView.bounds.height - 50
        //scrollScreenWidth * imageHeight/imageWidth
        
        for i in 0 ..< pageNum {
            // UIImageViewのインスタンス
            let image:UIImage = UIImage(named:gorillaImages[i])!
            let imageView = UIImageView(image:image)
            imageView.contentMode = UIViewContentMode.redraw
            imageView.clipsToBounds = true
            var rect:CGRect = imageView.frame
            rect.size.height = scrollScreenHeight
            rect.size.width = scrollScreenWidth
            
            imageView.frame = rect
            imageView.tag = i + 1
            
            // UILabelのインスタンス
//            let label = UILabel()
//            label.text = gorillaNames[i]
            
            // UIScrollViewのインスタンスに画像を貼付ける
            self.scrollView.addSubview(imageView)
//            self.scrollView.addSubview(label)
            
        }
        
        setupScrollImages()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupScrollImages(){
        
        // ダミー画像
        let imageDummy: UIImage = UIImage(named: gorillaImages[0])!
//        var label = UILabel()
//        label.text = gorillaNames[0]
        var imgView = UIImageView(image: imageDummy)
        var subviews: Array = scrollView.subviews
        
        // 描画開始の x,y 位置
        var px:CGFloat = 0.0
        let py:CGFloat = 0.0
        //(screenSize.height - scrollScreenHeight) / 2
        for i in 0 ..< subviews.count {
            imgView = subviews[i] as! UIImageView
            //label = subviews[i] as! UILabel
            if (imgView.isKind(of: UIImageView.self) && imgView.tag > 0){
                
                var viewFrame:CGRect = imgView.frame
                viewFrame.origin = CGPoint(x: px, y: py)
                imgView.frame = viewFrame
                
                px += (scrollScreenWidth)
                
                
            }
        }
        // UIScrollViewのコンテンツサイズを画像のtotalサイズに合わせる
        let nWidth:CGFloat = scrollScreenWidth * CGFloat(pageNum)
        scrollView.contentSize = CGSize(width: nWidth, height: scrollScreenHeight)
        
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
        headerLabel.text = "上野動物園は、東京の都心部にありながら自然とその景観を維持している都市型の動物園で、約350種2,500点の動物を飼育しています。"
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

//    //ボタンを生成する関数
//    func makeButton(x: CGFloat) -> UIButton {
//        let button = UIButton()
//        button.frame = CGRect(x: x, y: 50, width: 200, height: 200)
//        button.clipsToBounds = true
//        button.layer.cornerRadius = 3.0
//        button.layer.borderColor = UIColor.black.cgColor
//        button.layer.borderWidth = 4
//
//        for i in 0...7 {
//
//            button.setBackgroundImage(UIImage(named: gorillaImages[i]), for: .normal)
//
//        }
//        return button
//    }
//
//    //ラベルの生成する関数
//    func makeEffectLabel(x: CGFloat, text: String) -> UILabel{
//        let effectLabel = UILabel()
//        effectLabel.frame = CGRect(x: x + 50, y: 300, width: 100, height: 40)
//        effectLabel.text = text
//        effectLabel.font = UIFont(name: "ZinHenaBokuryu-RCF",size: CGFloat(22))
//        effectLabel.textAlignment = NSTextAlignment.center
//        effectLabel.backgroundColor = UIColor.black
//        effectLabel.layer.cornerRadius = effectLabel.bounds.height / 2
//        effectLabel.layer.masksToBounds = true
//        effectLabel.textColor = UIColor.yellow
//        return effectLabel
//
//    }
//
//
//
//    //エフェクトのグループをセットする関数
//    func setEffectGroup(x: CGFloat ,text: String){
//        let originalBtn = makeButton(x: x)
//        scrollView.addSubview(originalBtn)
//
//        let originalLabel = makeEffectLabel(x: x, text: text)
//        scrollView.addSubview(originalLabel)
//
//
//    }

}
