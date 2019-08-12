//
//  TabBarController.swift
//  GentleGorillaApp
//
//  Created by 優樹永井 on 2018/05/08.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit


class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //指定する色を定義
        let blue = UIColor(red: 11.0 / 255, green: 78.0 / 255, blue: 160.0 / 255, alpha: 1.0)
        let black = UIColor(red: 48.0 / 255, green: 48.0 / 255, blue: 47.0 / 255, alpha: 1.0)
        let white = UIColor.white
        
        //Tab Bar Itemに設定する画像を用意
        let Quiz = makeOriginalImage(name: "Quiz.png")
        let hightlightQuiz = makeOriginalImage(name: "hightlightQuiz.png")
        let knowledge = makeOriginalImage(name: "knowledge.png")
        let hightlightKnowledge = makeOriginalImage(name: "hightlightknowledge.png")
        let Map = makeOriginalImage(name: "Map.png")
        let hightlightMap = makeOriginalImage(name: "hightlightMap.png")
        let List = makeOriginalImage(name: "list.png")
        let hightlightList = makeOriginalImage(name: "hightlightList.png")
        let News = makeOriginalImage(name: "news.png")
        let hightlightNews = makeOriginalImage(name: "hightlightNews.png")
        //Tab Barの背景色を設定
        UITabBar.appearance().barTintColor = blue
        UITabBar.appearance().isTranslucent = false
        
        //TabBarControllerと紐付いているView Controllerを取得
        let firstViewController  = self.viewControllers![0]
        let secondViewController = self.viewControllers![1]
        let thirdViewController = self.viewControllers![2]
        let fourthViewController = self.viewControllers![3]
        let fiveViewController = self.viewControllers![4]
        
        //それぞれのView ControllerのTab Bar Itemに用意した画像を設定
        firstViewController.tabBarItem  = UITabBarItem(title: "Quiz", image: Quiz, selectedImage: hightlightQuiz)
        secondViewController.tabBarItem = UITabBarItem(title: "Knowledge", image: knowledge, selectedImage: hightlightKnowledge)
        thirdViewController.tabBarItem = UITabBarItem(title: "Map", image: Map, selectedImage: hightlightMap)
        fourthViewController.tabBarItem = UITabBarItem(title: "List", image: List, selectedImage: hightlightList)
        fiveViewController.tabBarItem = UITabBarItem(title: "News", image: News, selectedImage: hightlightNews)
        
        //特定のキーを指定した辞書型を用意
        let normalAttributes: Dictionary! = [NSAttributedString.Key.foregroundColor: black]
        let selectedAttributes: Dictionary! = [NSAttributedString.Key.foregroundColor: white]
        
        //Tab Bar Itemのタイトルカラーを設定
        UITabBarItem.appearance().setTitleTextAttributes(normalAttributes, for: UIControl.State.normal)
        UITabBarItem.appearance().setTitleTextAttributes(selectedAttributes, for: UIControl.State.selected)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeOriginalImage(name: String) -> UIImage {
        let image = UIImage(named: name)!
        let originalImage = image.withRenderingMode(.alwaysOriginal)
        return originalImage
    }
    

}
