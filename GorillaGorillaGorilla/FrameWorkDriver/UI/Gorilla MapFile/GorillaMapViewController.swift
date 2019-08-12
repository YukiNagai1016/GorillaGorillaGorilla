//
//  GorillaNewsViewController.swift
//  GentleGorillaApp
//
//  Created by 優樹永井 on 2018/05/09.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit
import SwiftyGif

class GorillaMapViewController: UIViewController , SwiftyGifDelegate {
    
    // UIパーツの定義
    @IBOutlet var homeImageView: UIImageView!
    @IBOutlet var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // 角を丸める
        self.homeImageView.layer.cornerRadius = 20
        self.homeImageView.layer.masksToBounds = true
        self.startButton.layer.cornerRadius = startButton.bounds.height / 2
        self.startButton.layer.masksToBounds = true
        
        // gif画像の設定
        self.homeImageView.delegate = self
        let gif = UIImage(gifName: "dribbblegorillagif1.gif", levelOfIntegrity:0.5)
        self.homeImageView.setGifImage(gif)
        let url = URL(string: "dribbblegorillagif1.gif")
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
    }
    
    @IBOutlet weak var leftContainerView: UIView! {
        didSet {
            guard let viewController = UIStoryboard(name: "Left", bundle: nil).instantiateInitialViewController() else { return }
            leftContainerView.frame = leftContainerViewInitFrame
            leftContainerView.addSubview(viewController.view)
        }
    }
    
    
    
    private let leftContainerViewInitFrame = CGRect(x: -UIScreen.main.bounds.width, y: 0,
                                                    width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    private let containerViewDispFrame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        for touch in touches {
            if let view = touch.view {
                transitionSlideViewController(tag: view.tag)
            }
        }
    }
    
    func transitionSlideViewController(tag: Int) {
        
        UIView.animate(withDuration: 0.3, animations: {
            self.leftContainerView.frame = self.leftContainerViewInitFrame
        })
        
    }
    
    
    @IBAction func tapLeftButton(_ sender: UIButton) {
        leftContainerView.frame = leftContainerViewInitFrame
        UIView.animate(withDuration: 0.3, animations: {
            self.leftContainerView.frame = self.containerViewDispFrame
        })
    }
}
