//
//  EnterGorillaViewController.swift
//  GorillaGorillaGorilla
//
//  Created by 優樹永井 on 2018/06/02.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit
import SwiftyGif

class EnterGorillaViewController: UIViewController , SwiftyGifDelegate {
    
    // UIパーツの定義
    @IBOutlet var homeImageView: UIImageView!
    @IBOutlet var interButton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.homeImageView.layer.cornerRadius = 20
        self.homeImageView.layer.masksToBounds = true
        self.interButton.layer.cornerRadius = interButton.bounds.height / 2
        self.interButton.layer.masksToBounds = true
        
        // gif画像の設定
        self.homeImageView.delegate = self
        let gif = UIImage(gifName: "dribbblegorillagif2.gif", levelOfIntegrity:0.5)
        self.homeImageView.setGifImage(gif)
        let url = URL(string: "dribbblegorillagif2.gif")
        self.homeImageView.setGifFromURL(url)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
