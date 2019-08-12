//
//  UIColor+Extention.swift
//  VoiceRecorderSample
//
//  Created by S's MacBook Air on 2018/11/28.
//  Copyright © 2018年 porme.inc. All rights reserved.
//

import UIKit

extension UIColor {
    public static var baseOrange: UIColor {
        return UIColor(red: 254/255, green: 210/255, blue: 72/255, alpha: 1.0)
    }
    
    static func color(_ red: Int, green: Int, blue: Int, alpha: Float) -> UIColor {
        return UIColor(
            red: 1.0 / 255.0 * CGFloat(red),
            green: 1.0 / 255.0 * CGFloat(green),
            blue: 1.0 / 255.0 * CGFloat(blue),
            alpha: CGFloat(alpha))
    }
}
