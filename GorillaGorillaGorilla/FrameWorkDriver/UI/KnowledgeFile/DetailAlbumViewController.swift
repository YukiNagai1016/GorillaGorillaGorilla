//
//  DetailAlbumViewController.swift
//  GorillaGorillaGorilla
//
//  Created by 優樹永井 on 2018/06/09.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit
import SwiftyGif

class DetailAlbumViewController: UIViewController , SwiftyGifDelegate {
    
    @IBOutlet var detailImageView: UIImageView!
    @IBOutlet var backgroundImageView: UIImageView!
    var imageName = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailImageView.image = UIImage(named: imageName)
        self.detailImageView.layer.borderWidth = 5
        self.detailImageView.layer.borderColor = UIColor.black.cgColor
        
        // gif画像の設定
        self.backgroundImageView.delegate = self
        let gif = UIImage(gifName: "dribbblegorillagif2.gif", levelOfIntegrity:0.5)
        self.backgroundImageView.setGifImage(gif)
        let url = URL(string: "dribbblegorillagif2.gif")
        self.backgroundImageView.setGifFromURL(url)
        self.backgroundImageView.layer.cornerRadius = backgroundImageView.bounds.height / 2
        self.backgroundImageView.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func makeCommentLabel() -> UILabel {
        let label = UILabel()
        label.text = "Gorilla"
        let randY = CGFloat(arc4random() % UInt32(self.view.frame.height - 64) + 64)
        label.frame.origin = CGPoint(x: self.view.frame.width, y: randY)
        label.font = UIFont(name: "HiraginoSans-W6", size: CGFloat(arc4random() % 21 + 20))
        label.sizeToFit()
        label.textColor = UIColor.yellow
        return label
    }
    
    @IBAction func tapSubmitButton(_ sender: UIButton) {
        let commentLabel = makeCommentLabel()
        self.view.addSubview(commentLabel)
        Timer.scheduledTimer(
            timeInterval: 0.1,
            target: self,
            selector: #selector(self.moveComment(_:)),
            userInfo: commentLabel,
            repeats: true
        )
    }
    
    @objc func moveComment(_ sender: Timer) {
        let commentLabel = sender.userInfo as! UILabel
        commentLabel.frame.origin.x -= commentLabel.frame.height
    }
}
