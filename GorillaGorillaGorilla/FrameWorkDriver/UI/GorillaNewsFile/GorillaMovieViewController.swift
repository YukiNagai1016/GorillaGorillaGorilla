//
//  GorillaMovieViewController.swift
//  GorillaGorillaGorilla
//
//  Created by 優樹永井 on 2018/06/11.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit
import youtube_ios_player_helper
import SnapKit

class GorillaMovieViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource , YTPlayerViewDelegate {
    
    var tableView: UITableView = UITableView()
    var movieTitles = ["ゴリラのパンチ力","可愛いドラミング","立ちション姿","シャバーニ ドラミング","赤ちゃんゴリラ","おもしろゴリラ","鼻くそを食べるゴリラ","ゴリラのガチ喧嘩", "人間にキレるゴリラ", "野生のゴリラ", "おもしろゴリラ", "ゴリラ 子猫をあやす", ""]
    var movieImages = ["ゴリラに襲われる.jpg","gorilla2.jpg","toilet.jpg","drumming.jpg","赤ちゃんゴリラ.jpg","IMG_23961.jpg","booger.jpg","quarrel.jpg", "angry.jpg", "wild.jpg", "gorillabro.png", "cuteCat.png", ""]

    var youtubeView: UIView!
    var playerView: YTPlayerView!
    var cancelButton:UIButton!
    var stopButton: UIButton!
    var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView()
        imageView.frame = self.view.bounds
        imageView.image = UIImage(named: "albumGorilla10.jpg")
        imageView.alpha = 0.7
        imageView.contentMode = UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        self.view.addSubview(imageView)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height - 54.0)
        tableView.backgroundColor = UIColor.clear
        self.view.addSubview(tableView)
        
        youtubeView = UIView()
        youtubeView.frame = tableView.frame
        youtubeView.contentMode = .scaleAspectFit
        self.view.addSubview(youtubeView)
        youtubeView.isHidden = true
        
        playerView = YTPlayerView()
        playerView.frame = tableView.frame
        playerView.delegate = self;
        self.youtubeView.addSubview(playerView)
        
        cancelButton = UIButton()
        cancelButton.frame = CGRect(x: 10, y:80, width: 50, height: 50)
        cancelButton.setImage(UIImage(named:"cancel.jpg"), for: .normal)
        cancelButton.addTarget(self, action: #selector(cancel), for: .touchUpInside)
        self.view.addSubview(cancelButton)
        cancelButton.isHidden = true
        
        stopButton = UIButton()
        stopButton.frame = CGRect(x: 70, y:460, width: 50, height: 50)
        stopButton.setImage(UIImage(named:"stop.png"), for: .normal)
        stopButton.addTarget(self, action: #selector(stop), for: .touchUpInside)
        self.view.addSubview(stopButton)
        stopButton.isHidden = true
        
        startButton = UIButton()
        startButton.frame = CGRect(x: 250, y:460, width: 50, height: 50)
        startButton.setImage(UIImage(named:"start.png"), for: .normal)
        startButton.addTarget(self, action: #selector(start), for: .touchUpInside)
        self.view.addSubview(startButton)
        startButton.isHidden = true
     }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 135
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        
        cell.selectionStyle = .none
        cell.backgroundColor = UIColor.clear
        cell.textLabel?.text = movieTitles[indexPath.row]
        cell.textLabel?.font = UIFont(name: "ZinHenaBokuryu-RCF", size: 21)
        cell.textLabel?.textColor = UIColor.white
        cell.imageView?.layer.borderColor = UIColor.black.cgColor
        cell.imageView?.layer.borderWidth = 3
        cell.imageView?.image = UIImage(named: movieImages[indexPath.row])

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        youtubeView.isHidden = false
        cancelButton.isHidden = false
        stopButton.isHidden = false
        startButton.isHidden = false
        
        var videoId = ["IxjbcjPhzaQ", "oaxXZqs-nB4", "dwPoosErULI", "8S5dTehvMPY", "pqyAwZuzLeI", "TSR2Lg3D-PI", "PmNVkKslwDU", "QTOeqsziEWA", "cVTfjFWkmbk", "Yb3DPFQEZnk", "ICVSIQGbJtw" ,"ehkWkWKqiGc"]
        
        self.playerView.load(withVideoId: videoId[indexPath.row], playerVars: ["playsinline":1])
    
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        playerView.playVideo()
    }
    
    @objc func cancel(){
        youtubeView.isHidden = true
        cancelButton.isHidden = true
        stopButton.isHidden = true
        startButton.isHidden = true
    }
    
    @objc func stop() {
        self.playerView.pauseVideo()
    }
    
    @objc func start() {
        self.playerView.playVideo()
    }
}

