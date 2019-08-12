//
//  Quiz.swift
//  GentleGorillaApp
//
//  Created by 優樹永井 on 2018/05/01.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit

class Quiz: NSObject {
    
    //クイズ1つの問題がどんな値を扱うか宣言
    var text: String
    var option1: String
    var option2: String
    var option3: String
    var answer: String
    var image: UIImage
    var difficulty: String
    
    //Initializer(イニシャライザ) = 初期化処理
    init(text: String, option1: String, option2: String, option3: String, answer: String, image: UIImage!, difficulty: String) {
        self.text = text
        self.option1 = option1
        self.option2 = option2
        self.option3 = option3
        self.answer = answer
        self.image = image
        self.difficulty = difficulty
    }
    
    //シャッフルするアルゴリズム(フィッシャー&イェーツ・アルゴリズム)
    class func shuffle(quizArray: [Quiz]) -> [Quiz] {
        var quiz = quizArray
        var shuffleQuizArray: [Quiz] = []
        for _ in 0..<quiz.count {
            let index = Int(arc4random_uniform(UInt32(quiz.count)))
            shuffleQuizArray.append(quiz[index])
            quiz.remove(at: index)
        }
        return shuffleQuizArray
    }

}
