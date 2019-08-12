//
//  SmartGorillaTableViewCell.swift
//  GorillaGorillaGorilla
//
//  Created by 優樹永井 on 2018/06/06.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit

class SmartGorillaTableViewCell: UITableViewCell {
    
    // UIパーツの定義
    @IBOutlet var gorillaImageView: UIImageView!
    @IBOutlet var gorillaNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.gorillaImageView.layer.borderWidth = 2
        self.gorillaImageView.layer.borderColor = UIColor.black.cgColor
//        self.gorillaImageView.layer.cornerRadius = gorillaImageView.bounds.height / 2
//        self.gorillaImageView.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
