//
//  GorillaDetailImageViewController.swift
//  GorillaGorillaGorilla
//
//  Created by 優樹永井 on 2018/07/11.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit

class GorillaDetailImageViewController: UIViewController {
    
    @IBOutlet var gorillaImageView: UIImageView!
    
    var selectedDetailImageName: UIImage!
    
    let items: [(icon: String, color: UIColor)] = [
        ("icon_home", UIColor(red: 0.19, green: 0.57, blue: 1, alpha: 1)),
        ("icon_search", UIColor(red: 0.22, green: 0.74, blue: 0, alpha: 1)),
        ("notifications-btn", UIColor(red: 0.96, green: 0.23, blue: 0.21, alpha: 1)),
        ("settings-btn", UIColor(red: 0.51, green: 0.15, blue: 1, alpha: 1)),
        ("nearby-btn", UIColor(red: 1, green: 0.39, blue: 0, alpha: 1)),
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        gorillaImageView.image = selectedDetailImageName
    }
    
    
   
}
