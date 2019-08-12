//
//  MamechishikiButton.swift
//  GentleGorillaApp
//
//  Created by 優樹永井 on 2018/05/01.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit
import SwiftyGif

var gorillaMamechishikiItems = "" +
    "1. ゴリラの血液型\n" +
    "\n" +
    "  人間のABO式血液型判定によると、B型に判別される。\n" +
    "\n" +

    "2. ゴリラの種類と学術名\n" +
    "\n" +
    "  2-1.ニシゴリラ(学術名：Gorilla gorilla)\n" +
    "    2-1-1.ニシローランドゴリラ(学術名：Gorilla gorilla gorilla)\n" +
    "    2-1-2.クロスリヴァーゴリラ(学術名：Gorilla gorilla diehli)\n" +
    "  2-2.ヒガシゴリラ(学術名：Gorilla beringei)\n" +
    "    2-2-1.マウンテンゴリラ(学術名：Gorilla beringei beringei)\n" +
    "    2-2-2.ヒガシローランドゴリラ(学術名：Gorilla beringet graueri)\n" +
    "\n" +
    "\n" +
    "   ゴリラは人間と同じヒト科に属していて、ヒト科には、チンパンジーやオラウータンもいる。ヒト科ゴリラ属は2種4亜種存在し、ニシゴリラとヒガシゴリラの2種に分けられる。さらに、ニシゴリラはニシローランドゴリラとクロスリバーゴリラ、ヒガシゴリラはマウンテンゴリラとヒガシローランドゴリラの、それぞれ2亜種に分類されている。" +
    "\n" +
    "\n" +
    
    "3. ゴリラの性格\n" +
    "\n" +
    "  ゴリラの性格は見かけによらず臆病でナイーブな性格がほとんどである。また、神経性の下痢にかかりやすく、心臓の負担から死に至るケースも多い等、ストレス耐性が非常に弱いことが知られている。そしてシャイな性格の子が多い。\n" +
    "\n" +
    
    "4. ゴリラの天敵\n" +
    "\n" +
    "   豹柄で有名なあのヒョウ。\n" +
    "   有名なゴリラ研究家・シャラーは、オスのゴリラがヒョウに捕食されているところを目撃してしまったらしい。\n" +
    "   一方、名前もよく分からない現地人の人は、「ゴリラを襲おうとしたヒョウが、逆に殺された」と言っており、どっちがどう天敵なのか良く分からない事になっている。" +
    "\n" +
    "\n" +
    
    "5. ドラミングについて\n" +
    "\n" +
    "  グーでやっているイメージが強いと思いますが、実はパーでドラミングしている。理由は単純で、グーよりもパーの方がいい音が遠くまで出せるからである。\n" +
    "  ゴリラはいろいろな場面でドラミングをするが、子どもが遊びを誘いかけるときにもドラミングをする光景が見られる。ただし、森に響き渡る「ポコポコポコ」という澄んだ音は、喉と胸に共鳴袋を発達させたシルバーバックにしか出せない。森でキャンプをしていると、シルバーバック同士がドラミングドラミング合戦をしている音が、昼間だけでなく真夜中にも聞こえて来る。" +
    "\n" +
    "\n" +
    "6. ゴリラの食べるもの\n" +
    "\n" +
    "  植物食傾向が強く、果実や植物の葉、アリなどの昆虫を主に食べる。生息している環境によって多少差異が見られ、果実が豊富な環境に生息するゴリラは、果実を主食としている。\n" +
    "\n" +
    
    "7. ゴリラは本当にバナナを食べるのか\n" +
    "\n" +
    "  バナナはもちろん食べるが、バナナを食べる割合が世間のイメージほど高いわけではない。\n" +
    "   ゴリラ顔の人に、異様にバナナを差し上げたくなる事もあり、「ゴリラの主食はバナナ！」と思われがちであるが、ちょっと違う。ゴリラの主食は木の葉、草、樹皮のような繊維性の植物で、果実や昆虫も食べると言われている。" +
    "\n" +
    
    "8. ゴリラは一夫多妻制.\n" +
    "\n" +
    
    "9. 体の特徴(平均値)\n" +
    "\n" +
    "   身長：オス 160 ~ 180 cm\n              メス 120 ~ 150 cm" +
    "\n" +
    "   体重：オス 150 ~ 250 kg\n              メス 80 ~ 120 kg" +
    "\n" +
    "(動物園での測定値)" +
    "\n" +
    "\n" +
    "   意外と身長が高いことがわかる。動物園で普段見る姿は前傾姿勢で腰が曲がっているため、少し背が低く見えるのかもしれない。" +
    "\n" +
    
    "\n" +
    "   ゴリラの体の大きさは霊長類の中では最大である。" +
    "\n" +
    "\n" +
    
    
    "10. ゴリラは、実はシャイで優しく、ジェントルマンである。\n" +
    "\n" +
    
    "11. ゴリラのお腹がポッコリしている理由\n" +
    "\n" +
    
    " ゴリラの主食は木の葉や果物など、その外見とは裏腹に草食がメインである。草や葉は非常に消化が悪く、より多くのガスが発生してしまう。それに加えて体が大きいため、 大量の餌を食べるため、計り知れない量のガスが発生する。これだけ大量のガスが発生すると、お腹がポッコリと膨らんでしまう。\n" +
    "\n" +
    
    "12. ゴリラの寿命は、人間の半分ほど(おおよそ40歳程度)。" +
    "\n" +
    "\n" +
    "13.「経営の神様」と言われている松下幸之助がリーダーの条件として、以下の3つをあげている。" +
    "\n" +
    "\n" +
    "   1. 愛嬌" +
    "\n" +
    "   2. 運が強そうなこと" +
    "\n" +
    "   3. 後ろ姿" +
    "\n" +
    "\n" +
    "   これ、実はゴリラそのものなんです。" +
    "\n" +
    "   ゴリラって深い生態だなとしみじみ。" +

    "\n" +
    "\n" +
    "14. ヒトリゴリラ" +
    "\n" +
    "\n" +
    "   ゴリラのオスは一度群れを離れると、他の群れに入ることも、出てきた群れへ戻ることもできません。たったひとりで森を歩き、食べ物を探し、ベッドを作って眠る。" +
    "\n" +
    "   最初は出てきた群れの行動域に留まり、狭い範囲を動き回っているが、他の群れがやって来ると、その後をつけていき、だんだんと行動域を広げる。やがて、胸を叩いて自己主張するようになり、他の群れにいるメスを誘い出そうとする。しかし、その群れにいるシルバーバックも胸を叩いて応え、メスが出ていくのを阻止しようとする。メスが出ていくそぶりを見せると、2頭のシルバーバックがぶつかり合い、時には激しく組み合って深い傷を負うこともある。若いオスはこうしたぶつかり合いを避けて、オスだけの集団を作って暮らすこともある。" +
    "\n" +
    "\n" +
    "15. シルバーバックについて" +
    "\n" +
    "\n" +
    "   野生のニシローランドゴリラのオスは、14才頃から背中の毛が銀色に変わり始める。成熟して背中が白銀になったオスのことを、「シルバーバック」と呼ぶ。" +
    "\n" +
    "\n" +
    "16. ナックルウォーキングについて" +
    "\n" +
    "\n" +
    "   ゴリラは「ナックルウォーキング」と呼ばれるグー歩きをする。ちなみに日本語にすると「曲げた指の関節歩き」。一種の苦行みたいな名前になる。" +
    "\n" +
    "\n" +
    "17. ゴリラの生息地と絶滅の危険度" +
    "\n" +
    "\n" +
    "   ゴリラの生息地は、アフリカの赤道直下にある低地の熱帯雨林や高地の山地林。人間の様々な活動等が影響して、「近い将来、絶滅の危険がかなり高い種」(世界自然保護連合のレッドリスト)とされている。みんなでゴリラを守っていく姿勢が大切だ！" +
    "\n" +
    "\n" +
    "18. ゴリラの握力は400キロほどある。" +
    "\n" +
    "\n" +
    "   もし彼氏が握力自慢してきたらこう言ってやりましょう。「ゴリラの足元にも及ばないじゃん」と。" +
    "\n" +
    "\n" +
    ""

var gorillaOhuzakeItems = "" +

    "1. 【ゴリラ神経質問題】ゴリラは非常に繊細で神経質なので、繁殖期にはオスがキレてメスをかみ殺す事がある。" +
    "\n" +
    "\n" +
    "2. 【いつ？発情不明問題】他の動物に見られるような、外陰部の腫脹などが見られないので、ゴリラがいつ子供を作れるのか、いまいち分からない。しかも、特に「交尾の季節」は無く、一年中が交尾期間の可能性。" +
    "\n" +
    "\n" +
    "3. ゴリラのドラミング、グーでやってると勘違いされがち。実はパーでやってます。" +
    "\n" +
    "\n" +
    "4. ニシローランドゴリラのゴリラの学術名は、ゴリラゴリラゴリラ(Gorilla gorilla gorilla)であることはあまり知られていない。" +
    "\n" +
    "\n" +
    "5. ゴリラのオスには同性愛が多い。" +
    "\n" +
    "\n" +
    "6. ニシローランドゴリラはみんなB型だが、ヒガシローランドゴリラはO型とB型が存在し、マウンテンゴリラにいたってはO型とA型だけでB型はいない。" +
    "\n" +
    "\n" +
    "7. 最近流行っている「バイオゴリラ」とは、最新のバイオテクノロジーによってバイオゴリラ細胞を移植されたゴリラのことである。" +
    "\n" +
    "\n" +
    "8. 日本の動物園にいるゴリラはすべて「ニシゴリラ」に分類される。" +
    "\n" +
    "\n" +
    "9. ふっくらと膨れたお腹が筋肉で盛り上げっていると思われがち(実はガスが溜まっているため)。" +
    "\n" +
    "\n" +
    "10. ゴリラは一人での食事中や家族との会話としてよく鼻歌を歌う。" +
    "\n" +
    "\n" +
    "11. 動物園でゴリラの「鼻くそ」が売っていることが稀にある。" +
    "\n" +
    "\n" +
    "12. ブタゴリラとゴリライモってどっちが酷いあだ名？\n" +
    "   どうやら「ブタゴリラ」の方が世間的には酷いようだ。キテレツ大百科を観る度に涙が出てくる(笑)。" +
    "\n" +
    "\n" +
    "13. 浜松市動物園は霊長類の展示が国内最大級である。ただ残念ながら現在ゴリラの飼育は1頭のみ。。" +
    "\n" +
    "\n" +
    "14. しりとりで割と序盤に呼ばれがち。「りんご　→ ゴリラ」 の流れ定番になりがち。" +
    "\n" +
    "\n" +
    "15. ゴリラは高い知能があると共に、感受性にも優れている。共感する能力が実はとても高いと言われている。" +
    "\n" +
    "\n" +
    "16. 肩幅広い人、ゴリラって呼ばれがち。" +
    "\n" +
    "\n" +
    "17. ゴリラの糞を投げる行動は、実は求愛行動と言われている。" +
    "\n" +
    "\n" +
    ""

    


class MamechishikiButton: UIViewController , SwiftyGifDelegate {

    var myWindow: UIWindow!
    var myWindowButton: UIButton!
    var myLabel: UILabel!
    var grayWindow : UIWindow!
    var label: UILabel!
    
    var myWindow2: UIWindow!
    var myWindowButton2: UIButton!
    var myLabel2: UILabel!
    var grayWindow2 : UIWindow!
    var label2: UILabel!
    
    // UIパーツの定義
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var mazimeButton: UIButton!
    @IBOutlet var ohuzakeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //バーアイテムカラー
        self.navigationController?.navigationBar.tintColor = UIColor.yellow
        
        // gif画像の設定
        self.backgroundImageView.delegate = self
        let gif = UIImage(gifName: "1_gorila_dribbble.gif", levelOfIntegrity:0.5)
        self.backgroundImageView.setGifImage(gif)
        let url = URL(string: "1_gorila_dribbble.gif")
        self.backgroundImageView.setGifFromURL(url)
        
        
        
        
        
        // ナビゲーションバーの曇りガラス効果オフ
        //self.navigationController!.navigationBar.isTranslucent = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        myWindow = UIWindow()
        myWindowButton = UIButton()
        grayWindow = UIWindow()
        label = UILabel()
        
        myWindow2 = UIWindow()
        myWindowButton2 = UIButton()
        grayWindow2 = UIWindow()
        label2 = UILabel()
        
        mazimeButton.layer.masksToBounds = true
        ohuzakeButton.layer.masksToBounds = true
        mazimeButton.addTarget(self, action: #selector(MamechishikiButton.onClickMazimeMyButton(sender:)), for: .touchUpInside)
        self.view.addSubview(mazimeButton)
        ohuzakeButton.addTarget(self, action: #selector(MamechishikiButton.onClickOhuzakeMyButton(sender:)), for: .touchUpInside)
        self.view.addSubview(ohuzakeButton)
        
        
        
        
        grayWindow.backgroundColor = UIColor.lightGray
        grayWindow.alpha = 0.5
        grayWindow.frame = CGRect(x:0,y:0,width:self.view.frame.width,height:self.view.frame.height)
        grayWindow.layer.position = CGPoint(x: self.view.frame.width/2, y: self.view.frame.height/2)
        grayWindow.makeKey()
        self.grayWindow.makeKeyAndVisible()
        grayWindow.isHidden = true
        myWindow.isHidden = true
        
        grayWindow2.backgroundColor = UIColor.lightGray
        grayWindow2.alpha = 0.5
        grayWindow2.frame = CGRect(x:0,y:0,width:self.view.frame.width,height:self.view.frame.height)
        grayWindow2.layer.position = CGPoint(x: self.view.frame.width/2, y: self.view.frame.height/2)
        grayWindow2.makeKey()
        self.grayWindow2.makeKeyAndVisible()
        grayWindow2.isHidden = true
        myWindow2.isHidden = true
        
        // 戻るボタンの角を丸める
        self.backgroundImageView.layer.cornerRadius = 20
        self.backgroundImageView.layer.masksToBounds = true
        self.label.layer.cornerRadius = label.bounds.height / 2
        self.label.layer.masksToBounds = true
    }
    
    
    func makeMazimeMyWindow(){
        
        myWindow.backgroundColor = UIColor.white
        myWindow.frame = CGRect(x:0,y:0,width:300,height:500)
        myWindow.layer.position = CGPoint(x:self.view.frame.width/2 ,y:self.view.frame.height/2)
        myWindow.alpha = 0.96
        myWindow.layer.cornerRadius = 20
        myWindow.layer.borderWidth = 2.0
        
        myWindow.makeKey()
        
        self.myWindow.makeKeyAndVisible()
        
        myWindowButton.frame = CGRect(x:0,y:0,width:180,height:50)
        myWindowButton.backgroundColor = UIColor.lightGray
        myWindowButton.setTitle("閉じる",for:.normal)
        myWindowButton.setTitleColor(UIColor.white, for: .normal)
        myWindowButton.layer.masksToBounds = true
        myWindowButton.layer.cornerRadius = 20.0
        myWindowButton.layer.position = CGPoint(x:self.myWindow.frame.width/2, y:self.myWindow.frame.height-40)
        myWindowButton.addTarget(self, action: #selector(MamechishikiButton.onClickMazimeMyButton(sender:)), for: .touchUpInside)
        self.myWindow.addSubview(myWindowButton)
        
        let myTextView: UITextView = UITextView(frame: CGRect(x:10, y:50, width:self.myWindow.frame.width - 10 , height:375))
        myTextView.backgroundColor = UIColor.clear
        myTextView.text = gorillaMamechishikiItems
        myTextView.font = UIFont.systemFont(ofSize: 15.0)
        myTextView.textColor = UIColor.black
        myTextView.textAlignment = NSTextAlignment.left
        myTextView.isEditable = false
        myTextView.layer.borderWidth = 1.0
        myTextView.layer.cornerRadius = 5.0
        myTextView.layer.position = CGPoint(x:self.myWindow.frame.width/2, y:self.myWindow.frame.height - 260)
        self.myWindow.addSubview(myTextView)
        
        label.text = "GORILLA"
        label.frame = CGRect(x: 0, y: 0, width: 200, height: 30)
        label.font = UIFont.systemFont(ofSize: 17.0)
        label.textAlignment = NSTextAlignment.center
        label.layer.position = CGPoint(x: self.myWindow.frame.width/2, y: 25)
        label.backgroundColor = UIColor.black
        label.textColor = UIColor.yellow
        label.layer.cornerRadius = label.bounds.height / 2
        label.layer.masksToBounds = true
        self.myWindow.addSubview(label)
    }
    
    func makeOhuzakeMyWindow() {
        
        myWindow2.backgroundColor = UIColor.white
        myWindow2.frame = CGRect(x:0,y:0,width:300,height:500)
        myWindow2.layer.position = CGPoint(x:self.view.frame.width/2 ,y:self.view.frame.height/2)
        myWindow2.alpha = 0.96
        myWindow2.layer.cornerRadius = 20
        myWindow2.layer.borderWidth = 2.0
        
        myWindow2.makeKey()
        
        self.myWindow2.makeKeyAndVisible()
        
        myWindowButton2.frame = CGRect(x:0,y:0,width:180,height:50)
        myWindowButton2.backgroundColor = UIColor.lightGray
        myWindowButton2.setTitle("閉じる",for:.normal)
        myWindowButton2.setTitleColor(UIColor.white, for: .normal)
        myWindowButton2.layer.masksToBounds = true
        myWindowButton2.layer.cornerRadius = 20.0
        myWindowButton2.layer.position = CGPoint(x:self.myWindow2.frame.width/2, y:self.myWindow2.frame.height-40)
        myWindowButton2.addTarget(self, action: #selector(MamechishikiButton.onClickOhuzakeMyButton(sender:)), for: .touchUpInside)
        self.myWindow2.addSubview(myWindowButton2)
        
        let myTextView2: UITextView = UITextView(frame: CGRect(x:10, y:50, width:self.myWindow2.frame.width - 10 , height:375))
        myTextView2.backgroundColor = UIColor.clear
        myTextView2.text = gorillaOhuzakeItems
        myTextView2.font = UIFont.systemFont(ofSize: 15.0)
        myTextView2.textColor = UIColor.black
        myTextView2.textAlignment = NSTextAlignment.left
        myTextView2.isEditable = false
        myTextView2.layer.borderWidth = 1.0
        myTextView2.layer.cornerRadius = 5.0
        myTextView2.layer.position = CGPoint(x:self.myWindow2.frame.width/2, y:self.myWindow2.frame.height - 260)
        self.myWindow2.addSubview(myTextView2)
        
        label2.text = "GORILLA"
        label2.frame = CGRect(x: 0, y: 0, width: 200, height: 30)
        label2.font = UIFont.systemFont(ofSize: 17.0)
        label2.textAlignment = NSTextAlignment.center
        label2.layer.position = CGPoint(x: self.myWindow2.frame.width/2, y: 25)
        label2.backgroundColor = UIColor.black
        label2.textColor = UIColor.yellow
        label2.layer.cornerRadius = label2.bounds.height / 2
        label2.layer.masksToBounds = true
        self.myWindow2.addSubview(label2)
    }
    
    @objc internal func onClickMazimeMyButton(sender: UIButton){
        if sender == myWindowButton {
            grayWindow.isHidden = true
            myWindow.isHidden = true
        }
        else if sender == mazimeButton {
            grayWindow.isHidden = false
            myWindow.isHidden = false
            makeMazimeMyWindow()
        }
    }
    
    @objc internal func onClickOhuzakeMyButton(sender: UIButton){
        if sender == myWindowButton2 {
            grayWindow2.isHidden = true
            myWindow2.isHidden = true
        }
        else if sender == ohuzakeButton {
            grayWindow2.isHidden = false
            myWindow2.isHidden = false
            makeOhuzakeMyWindow()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
