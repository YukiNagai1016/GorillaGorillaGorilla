//
//  LogoAnimation.swift
//  GorillaGorillaGorilla
//
//  Created by 優樹永井 on 2019/08/12.
//  Copyright © 2019 com.nagai. All rights reserved.
//

import UIKit

class LogoAnimation: NSObject {
    
    let view: UIView!
    var imageView: UIImageView!
    
    init(_ view: UIView, _ imageView: UIImageView) {
        self.view = view
        self.imageView = imageView
    }

    func buildStratView() {
        self.view.backgroundColor = UIColor(red: 249/252, green: 214/252, blue: 87/252, alpha: 1.0)
        self.imageView = UIImageView(frame: CGRect(x: self.view.bounds.width/2, y: self.view.bounds.height/2, width: 100.0, height: 100.0))
        self.imageView.center = self.view.center
        self.imageView.image = UIImage(named: "切り取りcuteGorilola.png")
        self.view.addSubview(self.imageView)
    }

    func logoAnimation() {
        self.view.backgroundColor = UIColor(red: 249/252, green: 214/252, blue: 87/252, alpha: 1.0)

        UIView.animate(withDuration: 0.3, delay: 1.0, options: UIView.AnimationOptions.curveEaseOut, animations: {
            () in
            self.imageView.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        }) { (Bool) in
            if Bool == true{
                UIView.animate(withDuration: 0.3, delay: 0.5, options: UIView.AnimationOptions.curveEaseOut, animations: {
                    () in
                    self.view.backgroundColor = UIColor(red: 249/252, green: 214/252, blue: 87/252, alpha: 1.0)
                    self.imageView.transform = CGAffineTransform(scaleX: 7.0, y: 7.0)
                    self.imageView.alpha = 0
                }, completion: { (Bool) in
                    self.imageView.removeFromSuperview()
                })
            }
        }
    }
}
