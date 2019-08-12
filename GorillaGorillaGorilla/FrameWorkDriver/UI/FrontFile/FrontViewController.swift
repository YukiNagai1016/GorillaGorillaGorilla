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
    let logoAnimation: LogoAnimation! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let logoAnimation = LogoAnimation(self.view, logoImageView)
        logoAnimation.buildStratView()
        logoAnimation.logoAnimation()
    }
    
}
