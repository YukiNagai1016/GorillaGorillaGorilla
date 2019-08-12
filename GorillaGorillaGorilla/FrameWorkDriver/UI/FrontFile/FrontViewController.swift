//
//  FrontViewController.swift
//  GorillaGorillaGorilla
//
//  Created by 優樹永井 on 2018/05/31.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit

class FrontViewController: UIViewController {
    
    var logoImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        buildStratView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        logoAnimation()
        
        
        
    }
    
    

    //ロゴを作成する（起動時）
    func buildStratView() {
        self.view.backgroundColor = UIColor(red: 249/252, green: 214/252, blue: 87/252, alpha: 1.0)
        self.logoImageView = UIImageView(frame: CGRect(x: self.view.bounds.width/2, y: self.view.bounds.height/2, width: 100.0, height: 100.0))
        self.logoImageView.center = self.view.center
        self.logoImageView.image = UIImage(named: "切り取りcuteGorilola.png")
        self.view.addSubview(self.logoImageView)
        
    }
    
    //ロゴのanimationする
    func logoAnimation() {
        self.view.backgroundColor = UIColor(red: 249/252, green: 214/252, blue: 87/252, alpha: 1.0)
        //縮小
        UIView.animate(withDuration: 0.3, delay: 1.0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            () in
            self.logoImageView.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        }) { (Bool) in
            if Bool == true{
                //拡大
                UIView.animate(withDuration: 0.3, delay: 0.5, options: UIViewAnimationOptions.curveEaseOut, animations: {
                    () in
                    self.view.backgroundColor = UIColor(red: 249/252, green: 214/252, blue: 87/252, alpha: 1.0)
                    self.logoImageView.transform = CGAffineTransform(scaleX: 7.0, y: 7.0)
                    self.logoImageView.alpha = 0
                    
                }, completion: { (Bool) in
                    self.logoImageView.removeFromSuperview()
                    // self.navigationController?.pushViewController(self.tabBarController!, animated: true)
                    self.performSegue(withIdentifier: "toGorilla", sender: nil)
                })
            }
        }
        
        
    }
}
