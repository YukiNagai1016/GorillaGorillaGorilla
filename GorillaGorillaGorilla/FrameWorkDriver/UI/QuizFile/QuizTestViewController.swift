//
//  QuizTestViewController.swift
//  GorillaGorillaGorilla
//
//  Created by 優樹永井 on 2018/07/03.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit

class QuizTestViewController: UIViewController {

    var point: Int = 0
    var quizNumber: Int = 0
    var quizArray: [Quiz] = []
    
    @IBOutlet var quizImageView: UIImageView!
    @IBOutlet var quizNumberLabel: UILabel!
    @IBOutlet var quizTextView: UITextView!
    @IBOutlet var option1Button: UIButton!
    @IBOutlet var option2Button: UIButton!
    @IBOutlet var option3Button: UIButton!
    
    //応用課題：まる、ばつのImageView
    @IBOutlet var animationImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpQuiz()
        
        showQuiz()
        
        self.option1Button.layer.cornerRadius = option1Button.layer.bounds.height / 2
        self.option1Button.layer.masksToBounds = true
        self.option2Button.layer.cornerRadius = option2Button.layer.bounds.height / 2
        self.option2Button.layer.masksToBounds = true
        self.option3Button.layer.cornerRadius = option3Button.layer.bounds.height / 2
        self.option3Button.layer.masksToBounds = true
        self.quizImageView.layer.cornerRadius = 15
        self.quizImageView.layer.masksToBounds = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpQuiz() {
        let quiz1 = Quiz(text: "ゴリラの体毛は黒から暗灰褐色をしているが,生まれてから13年ほどすると,背中の毛が白く変色する.この変色した背中の様子を指してなんと呼ばれているか？", option1: "バック　オブ　ザ　ホワイト", option2: "シルバーバック", option3: "ホワイトバック", answer: "シルバーバック", image: UIImage(named: "ゴリラ1.jpeg")!, difficulty: "C")
        let quiz2 = Quiz(text: "ゴリラは,その後頭部が大きく出っ張っているのが特徴的でカッコイイのですが,後頭部が突出し始めるのはおおよそ生後何年くらいでしょうか？", option1: "10年", option2: "12年", option3: "18年", answer: "18年", image: UIImage(named: "ゴリラ2.jpeg")!, difficulty: "A")
        let quiz3 = Quiz(text: "ゴリラの天敵として恐れられている動物は次のうちどれ？", option1: "ライオン", option2: "ヒョウ", option3: "ワニ", answer: "ヒョウ", image: UIImage(named: "ゴリラ3.jpeg")!, difficulty: "C")
        let quiz4 = Quiz(text: "ゴリラの握力は最大で約何kg？？", option1: "300", option2: "600", option3: "1000", answer: "600", image: UIImage(named: "ゴリラ4.jpeg")!, difficulty: "B")
        let quiz5 = Quiz(text: "赤ちゃんをそっと触る一番左のゴリラの名前はコモモと言い,赤ちゃんを抱いている一番右のゴリラはモモコと言います.そしてその赤ちゃんの母親です.では,その赤ちゃんの名前はなんでしょう？", option1: "リキ", option2: "ナオト", option3: "ユウト", answer: "リキ", image: UIImage(named: "上野動物園のゴリラ.jpeg")!, difficulty: "C")
        let quiz6 = Quiz(text: "ゴリラが絶対に食べないものは？", option1: "アリ", option2: "人間", option3: "イチゴ", answer: "人間", image: UIImage(named: "ゴリラ5.jpeg")!, difficulty: "C")
        let quiz7 = Quiz(text: "ゴリラの血液型は人間のABO式血液型判定によると,何型になるか？", option1: "A型", option2: "B型", option3: "O型", answer: "B型", image: UIImage(named: "GORILLA7.jpg")!, difficulty: "C")
        let quiz8 = Quiz(text: "ゴリラが胸を叩く仕草をドラミングと言いますが,その音はどれくらい遠くまで聞こえるか？", option1: "500m", option2: "1500m", option3: "2000m", answer: "2000m", image: UIImage(named: "GORILLA4.jpg")!, difficulty: "B")
        let quiz9 = Quiz(text: "ゴリラのドラミングの時の手の形は一般的にどうなっているか？", option1: "チョキ", option2: "グー", option3: "パー", answer: "パー", image: UIImage(named: "GORILLA6.png")!, difficulty: "C")
        let quiz10 = Quiz(text: "ゴリラは時に糞を投げる時がありますが,これは何を表すのか？", option1: "威嚇行為", option2: "求愛行為", option3: "蔑む行為", answer: "求愛行為", image: UIImage(named: "GORILLA3.png")!, difficulty: "B")
        let quiz11 = Quiz(text: "世界中のゴリラのほとんどは,ニシローランドゴリラと呼ばれる種類であるが,ニシローランドゴリラの学術名は次のうちどれか？", option1: "オットーゴリラ", option2: "ゴリラゴリラゴリラ", option3: "グラウンドゴリラ", answer: "ゴリラゴリラゴリラ", image: UIImage(named: "GORILLA2.png")!, difficulty: "S")
        let quiz12 = Quiz(text: "ゴリラを漢字で書いたものは次のうちどれか？", option1: "大猩々", option2: "越幾斬", option3: "混凝土", answer: "大猩々", image: UIImage(named: "GORILLA1.png")!, difficulty: "A")
        let quiz13 = Quiz(text: "ゴリラはギリシャ語でなんという意味になるか？", option1: "漆黒の女戦士", option2: "啓蒙な女騎士", option3: "毛深い女部族", answer: "毛深い女部族", image: UIImage(named: "GORILLA5.png")!, difficulty: "B")
        let quiz14 = Quiz(text: "ゴリラあるあるとしてよく言われているのは？", option1: "オラオラ系が多い", option2: "ホモが多い", option3: "ロマンチストが多い", answer: "ホモが多い", image: UIImage(named: "ゴリラ7.jpeg")!, difficulty: "C")
        let quiz15 = Quiz(text: "ゴリラのキャッチフレーズとしてふさわしいものは？", option1: "傲慢な怪物", option2: "動物園最強の生物", option3: "優しき巨人", answer: "優しき巨人", image: UIImage(named: "ゴリラ9.jpeg")!, difficulty: "C")
        let quiz16 = Quiz(text: "シルバーバックが最強と言われる所以(理由)として当てはまらないものは？", option1: "より長生きしているから", option2: "危機管理能力があるから", option3: "チクチクしているから", answer: "チクチクしているから", image: UIImage(named: "ゴリラ8.jpeg")!, difficulty: "B")
        let quiz17 = Quiz(text: "ゴリラがドラミングをする理由として,もっとも適切でないものは次のうちどれか？", option1: "戦いを避けるために交渉するため", option2: "筋肉をつけるため", option3: "興奮を抑えるため", answer: "", image: UIImage(named: "bad_monkey.jpg")!, difficulty: "C")
        let quiz18 = Quiz(text: "ゴリラのお腹が膨れている理由として最も適切なものは？", option1: "筋肉が発達しているから", option2: "ガスが溜まっているから", option3: "食物を保管しているから", answer: "ガスが溜まっているから", image: UIImage(named: "GorillaStomach.jpg")!, difficulty: "B")
        let quiz19 = Quiz(text: "この写真の子の名前は次のうちどれ？", option1: "アイ", option2: "ミキ", option3: "ユイ", answer: "アイ", image: UIImage(named: "アイ.jpg")!, difficulty: "A")
        let quiz20 = Quiz(text: "この写真の子の名前は次のうちどれ？", option1: "サリー", option2: "アニー", option3: "ユリー", answer: "アニー", image: UIImage(named: "アニー.jpg")!, difficulty: "A")
        let quiz21 = Quiz(text: "この写真の子の名前は次のうちどれ？", option1: "マサヨシ", option2: "マサタカ", option3: "キヨマサ", answer: "キヨマサ", image: UIImage(named: "キヨマサ.jpg")!, difficulty: "A")
        let quiz22 = Quiz(text: "この写真の子の名前は次のうちどれ？", option1: "ゲンキ", option2: "ユウキ", option3: "タカシ", answer: "ゲンキ", image: UIImage(named: "ゲンキ.jpg")!, difficulty: "A")
        let quiz23 = Quiz(text: "この写真の子の名前は次のうちどれ？", option1: "カンタロウ", option2: "ゲンタロウ", option3: "ユウタロウ", answer: "ゲンタロウ", image: UIImage(named: "ゲンタロウ.jpg")!, difficulty: "A")
        let quiz24 = Quiz(text: "この写真の子の名前は次のうちどれ？", option1: "シャンパン", option2: "ズッキーニ", option3: "シャバーニ", answer: "シャバーニ", image: UIImage(named: "シャバーニ.jpg")!, difficulty: "C")
        let quiz25 = Quiz(text: "この写真の子の名前は次のうちどれ？", option1: "タロウ", option2: "ジロウ", option3: "サブロウ", answer: "タロウ", image: UIImage(named: "タロウ.jpg")!, difficulty: "A")
        let quiz26 = Quiz(text: "この写真の子の名前は次のうちどれ？", option1: "ヨン", option2: "ドン", option3: "サン", answer: "ドン", image: UIImage(named: "ドン.jpg")!, difficulty: "C")
        let quiz27 = Quiz(text: "この写真の子の名前は次のうちどれ？", option1: "スモモ", option2: "ロコモコ", option3: "コモモ", answer: "コモモ", image: UIImage(named: "コモモ.jpg")!, difficulty: "A")
        let quiz28 = Quiz(text: "この写真の子の名前は次のうちどれ？", option1: "トト", option2: "ツツ", option3: "ヒヒ", answer: "トト", image: UIImage(named: "トト.jpg")!, difficulty: "A")
        let quiz29 = Quiz(text: "この写真の子の名前は次のうちどれ？", option1: "ママ", option2: "ナナ", option3: "マナ", answer: "ナナ", image: UIImage(named: "ナナ.jpg")!, difficulty: "A")
        let quiz30 = Quiz(text: "この写真の子の名前は次のうちどれ？", option1: "ヨシコ", option2: "ユキコ", option3: "ネネ", answer: "ネネ", image: UIImage(named: "ネネ.jpg")!, difficulty: "A")
        let quiz31 = Quiz(text: "この写真の子の名前は次のうちどれ？", option1: "ピーコ", option2: "おすぎ", option3: "ユウコ", answer: "ピーコ", image: UIImage(named: "ピーコ.jpg")!, difficulty: "A")
        let quiz32 = Quiz(text: "この写真の子の名前は次のうちどれ？", option1: "カホコ", option2: "ハオコ", option3: "カナコ", answer: "ハオコ", image: UIImage(named: "ハオコ.jpg")!, difficulty: "B")
        let quiz33 = Quiz(text: "この写真の子の名前は次のうちどれ？", option1: "モモエ", option2: "モーモ", option3: "モモコ", answer: "モモコ", image: UIImage(named: "モモコ.jpg")!, difficulty: "A")
        let quiz34 = Quiz(text: "この写真の子の名前は次のうちどれ？", option1: "モモタロウ", option2: "モモノスケ", option3: "モンタロウ", answer: "モモタロウ", image: UIImage(named: "モモタロウ.jpg")!, difficulty: "A")
        let quiz35 = Quiz(text: "この写真の子の名前は次のうちどれ？", option1: "サンタ", option2: "モンタ", option3: "カンタ", answer: "モンタ", image: UIImage(named: "モンタ.jpg")!, difficulty: "A")
        let quiz36 = Quiz(text: "この写真の子(赤ちゃん)の名前は次のうちどれ？", option1: "ユタカ", option2: "エイタ", option3: "リキ", answer: "リキ", image: UIImage(named: "リキ.jpg")!, difficulty: "C")
        let quiz37 = Quiz(text: "この写真の子の名前は次のうちどれ？", option1: "ローラ", option2: "アリサ", option3: "アケミ", answer: "ローラ", image: UIImage(named: "ローラ.jpg")!, difficulty: "B")
        let quiz38 = Quiz(text: "この写真の子の名前は次のうちどれ？", option1: "モカモカ", option2: "モモカ", option3: "ユカコ", answer: "モモカ", image: UIImage(named: "モモカ.jpg")!, difficulty: "A")
        let quiz39 = Quiz(text: "この写真の子の名前は次のうちどれ？", option1: "ショウタロウ", option2: "ジュン", option3: "ショウ", answer: "ショウ", image: UIImage(named: "ショウ.jpg")!, difficulty: "A")
        let quiz40 = Quiz(text: "経営の神様」と言われている松下幸之助がリーダーの条件として、３つの条件を挙げているが,これらがまさにゴリラの象徴であると話題になっている。次のうち、条件として適切でないものはどれか？", option1: "愛嬌", option2: "頑丈な肉体", option3: "後ろ姿", answer: "頑丈な肉体", image: UIImage(named: "albumGorilla38.jpg")!, difficulty: "S")
        let quiz41 = Quiz(text: "投資界では,「Gorilla Game」と呼ばれる投資方法が存在するが,その説明を一言で表したものとして,適切なものは次のうちどれか？", option1: "ハイテク株投資で成功する方法", option2: "一発投資で億万長者になる方法", option3: "あえて勢いのない企業に投資する方法", answer: "ハイテク株投資で成功する方法", image: UIImage(named: "albumGorilla39.jpg")!, difficulty: "S")
        let quiz42 = Quiz(text: "ゴリラにはいくつか種が存在するが, 体毛が短く, 灰褐色で, 頭部に赤褐色の毛を持つゴリラの種は次のうちどれか?", option1: "ニシローランドゴリラ", option2: "マウンテンゴリラ", option3: "ヒガシローランドゴリラ", answer: "ニシローランドゴリラ", image: UIImage(named: "NishiRolandGorilla.jpeg")!, difficulty: "C")
        let quiz43 = Quiz(text: "ゴリラにはいくつか種が存在するが, 全身の毛が漆黒でむっくりしており, 顔が比較的短く, 鼻に数本の筋が刻まれているゴリラは次のうちどの種か?", option1: "ニシローランドゴリラ", option2: "マウンテンゴリラ", option3: "ヒガシローランドゴリラ", answer: "マウンテンゴリラ", image: UIImage(named: "MountainGorilla.jpeg")!, difficulty: "C")
        let quiz44 = Quiz(text: "ゴリラにはいくつか種が存在するが,体毛が漆黒で大人のオスの背中は, ウマの鞍のような形に毛が白くなり, かつ顔が比較的長く, 鼻筋がすっきりしているゴリラは次のうちどの種か?", option1: "ニシローランドゴリラ", option2: "マウンテンゴリラ", option3: "ヒガシローランドゴリラ", answer: "ヒガシローランドゴリラ", image: UIImage(named: "HigashiRolandGorilla.jpeg")!, difficulty: "C")
        let quiz45 = Quiz(text: "ゴリラは歩くとき, 長い腕を立て, 手を軽く握って指の背を地面につける. この歩き方のことを何と言うか?", option1: "ゴリラウォーキング", option2: "ナックルウォーキング", option3: "フィストウォーキング", answer: "ナックルウォーキング", image: UIImage(named: "Knucklewalking.jpeg")!, difficulty: "B")
        let quiz46 = Quiz(text: "ゴリラの鼻の中心には, 鼻紋と呼ばれる模様がある. 鼻紋の特徴として, 不適切なものは次のうちどれか?", option1: "個体差がある", option2: "歳をとっても変わらない", option3: "オスにしかない", answer: "オスにしかない", image: UIImage(named: "albumGorilla1.jpg")!, difficulty: "C")
        let quiz47 = Quiz(text: "ゴリラの種によって生息地の標高が異なるが, 比較的低地の熱帯雨林に生息しているゴリラは次のうちどの種か?", option1: "ニシローランドゴリラ", option2: "ヒガシローランドゴリラ", option3: "マウンテンゴリラ", answer: "ニシローランドゴリラ", image: UIImage(named: "albumGorilla2.jpg")!, difficulty: "A")
        let quiz48 = Quiz(text: "ゴリラのオスは, 13歳以上になると背中が小さくなるが, 8~12歳の間はまだ背中が白くない. この背中が白くなる前の背中のことを俗に何と言うか?", option1: "ノットホワイトバック", option2: "ブラックバック", option3: "ブルーバック", answer: "ブラックバック", image: UIImage(named: "albumGorilla3.jpg")!, difficulty: "C")
        let quiz49 = Quiz(text: "ゴリラあるあるとして, 適当でないものは次のうちどれか?", option1: "人のように腕や足を組んで寝る", option2: "実は猫が好き", option3: "子どもを殺すことがある", answer: "実は猫が好き", image: UIImage(named: "albumGorilla4.jpg")!, difficulty: "A")
        let quiz50 = Quiz(text: "ゴリラの音声の種類はいくらくらいあるか？", option1: "20", option2: "50", option3: "100", answer: "20", image: UIImage(named: "albumGorilla5.jpg")!, difficulty: "S")
        let quiz51 = Quiz(text: "ゴリラはよく「グッグウウム」と喉を震わせて低く唸る. これは何を意味しているのか?", option1: "いかり", option2: "あいさつ", option3: "甘える", answer: "あいさつ", image: UIImage(named: "albumGorilla6.jpg")!, difficulty: "A")
        let quiz52 = Quiz(text: "動物園のゴリラと違って, 野生のゴリラに会うときはいくつかルールがある. 次のうち適切でないものはどれか?", option1: "背を向けない", option2: "フラッシュは厳禁", option3: "自分から触る", answer: "自分から触る", image: UIImage(named: "albumGorilla7.jpg")!, difficulty: "C")
        let quiz53 = Quiz(text: "ゴリラの名の源となったのは, 次のうちどれか?", option1: "ゴリライ", option2: "ゴリラマ", option3: "ゴリラルー", answer: "ゴリライ", image: UIImage(named: "albumGorilla8.jpg")!, difficulty: "A")
        let quiz54 = Quiz(text: "ゴリラが発する音声の一つで, 抑揚のある高い声を長く響かせるものを何というか?", option1: "シンギング", option2: "ハミング", option3: "ハノーイ", answer: "ハミング", image: UIImage(named: "IMG_2529.jpg")!, difficulty: "B")
        let quiz55 = Quiz(text: "次のうち, もっとも長いのはどれか?(上野動物園のニシローランドゴリラのオスの計測値を参照)", option1: "ゴリラの身長", option2: "ゴリラが両腕を広げた長さ", option3: "ジャイアント白田の身長", answer: "ゴリラが両腕を広げた長さ", image: UIImage(named: "IMG_2528.jpg")!, difficulty: "S")
        let quiz56 = Quiz(text: "ドラミングの一連の動作の一つで, 「フーホー」と高い声を出す行動で, 胸を叩く前に連続的に発せられる音声のことを何というか?", option1: "ホーリング", option2: "フーティング", option3: "サイティング", answer: "フーティング", image: UIImage(named: "IMG_2523.jpg")!, difficulty: "S")
        let quiz57 = Quiz(text: "ゴリラの声や動作を真似て, 野生のゴリラを人にならすことを何というか?", option1: "人づけ", option2: "人コピー", option3: "人ならしづけ", answer: "人づけ", image: UIImage(named: "IMG_2530.jpg")!, difficulty: "B")
        let quiz58 = Quiz(text: "かつて「ムサシ♂」という名前のゴリラがいた動物園は次のうちどれか?", option1: "京都市動物園", option2: "多摩動物園", option3: "上野動物園", answer: "上野動物園", image: UIImage(named: "IMG_2526.jpg")!, difficulty: "S")
        let quiz59 = Quiz(text: "ゴリラの遊びとして, 小高い場所に代わる代わるよじ登っては胸を叩くという行為があるが, この行為の名称として知られているものは次のうちどれか?", option1: "ゴリラごっこ", option2: "お山の大将ごっこ", option3: "おさるさんごっこ", answer: "お山の大将ごっこ", image: UIImage(named: "シャバーニインスタ.jpg")!, difficulty: "A")
        let quiz60 = Quiz(text: "ゴリラは1日に平均で何回くらいウンチをするか?", option1: "2~4回", option2: "6~12回", option3: "15~18回", answer: "6~12回", image: UIImage(named: "dangerGorilla.jpg")!, difficulty: "B")
        let quiz61 = Quiz(text: "就活面接でよくある「自分を動物に例えるとしたら何ですか？」という質問に対して、「ニシローランドゴリラです」と答えるとどんな資質をアピールできるか？次のうち最も当てはまるものを選べ。", option1: "誇りを持っている", option2: "思いやりと忍耐溢れる身体", option3: "クリエイティブな発想力", answer: "思いやりと忍耐溢れる身体", image: UIImage(named: "GorillaLogic.jpg")!, difficulty: "A")
        let quiz62 = Quiz(text: "次のうち正しいものはどれか？", option1: "交尾時にオスがメスを殺すことがある", option2: "ドラミングはグーでやることも多々ある", option3: "頻繁に逆立ちする", answer: "交尾時にオスがメスを殺すことがある", image: UIImage(named: "textme-17.png")!, difficulty: "S")
        let quiz63 = Quiz(text: "日本の人類学者、霊長類学者にして、ゴリラ研究の第一人者である、京都大学理学研究科教授は次のうちどなたか？", option1: "弦間洸太", option2: "永井 優樹", option3: "山極 壽一", answer: "山極 壽一", image: UIImage(named: "warpaint-press-knockout-dribble.jpg")!, difficulty: "A")
        let quiz64 = Quiz(text: "ゴリラの妊娠期間(平均)として適切なものは次のうちどれか？", option1: "124日", option2: "256日", option3: "365日", answer: "256日", image: UIImage(named: "xingxing400300.jpg")!, difficulty: "A")
        let quiz65 = Quiz(text: "世界で最も多いゴリラの種類は次のうちどれか？", option1: "マウンテンゴリラ", option2: "ヒガシローランドゴリラ", option3: "ニシローランドゴリラ", answer: "ニシローランドゴリラ", image: UIImage(named: "gorilla-1.png")!, difficulty: "B")
        let quiz66 = Quiz(text: "次の動作のうち、自分の腕力をアピールする行為に当てはまらないのはどれか？", option1: "落ちている木の枝を振り回す", option2: "二本足で立ち上がる", option3: "アイソレする", answer: "アイソレする", image: UIImage(named: "gorilla-1.jpg")!, difficulty: "C")
        let quiz67 = Quiz(text: "ニシローランドゴリラは世界中で何頭程度いるか？", option1: "3万頭", option2: "8万頭", option3: "20万頭", answer: "20万頭", image: UIImage(named: "gorilla_dr.png")!, difficulty: "A")
        let quiz68 = Quiz(text: "恩賜上野動物園では,時に、全国各地の動物園（飼育施設）で飼育されていたゴリラたちを1ヶ所に集めることで群れを形成させ、繁殖させるという試みを行なっていたが、この試みのことを何というか？", option1: "ブリーディングローン", option2: "ゴリラガーディング", option3: "ゴリラーフロック", answer: "ブリーディングローン", image: UIImage(named: "errol.png")!, difficulty: "S")
        let quiz69 = Quiz(text: "イケメンゴリラとして有名な東山動植物園のシャバーニのお兄さんの名前は、次のうちどれか？(写真はイケメンゴリラのシャバーニ)", option1: "ハオコ", option2: "リキ", option3: "ドン", answer: "ハオコ", image: UIImage(named: "シャバーニインスタ.jpg")!, difficulty: "A")
        let quiz70 = Quiz(text: "霊長類の展示が国内最大級である静岡県浜松市の浜松市動物園の年間パスポートの値段はいくらか？", option1: "820円", option2: "1560円", option3: "2790円", answer: "820円", image: UIImage(named: "apes.jpg")!, difficulty: "S")
        let quiz71 = Quiz(text: "霊長類の展示が国内最大級である静岡県浜松市の浜松市動物園には一頭だけゴリラがいる。そのゴリラの名前は次のうちどれか？", option1: " ドン", option2: "ショウ", option3: "ハオコ", answer: "ショウ", image: UIImage(named: "ape2.png")!, difficulty: "A")
        let quiz72 = Quiz(text: "すごく特徴的で目の上に2つの大きなコブがあって、メガネをかけているように見えるゴリラがいるが、そのゴリラの名前は次のうちどれか？", option1: "ショウ", option2: "ローラ", option3: "ムサシ", answer: "ショウ", image: UIImage(named: "syoImage.jpg")!, difficulty: "A")
        let quiz73 = Quiz(text: "イケメンゴリラとして有名なゴリラのシャバーニは実はイケメンすぎるが故に写真集を出している。その写真集のタイトルは次のうちどれか？", option1: "イ⭐︎ケ⭐︎メ⭐︎ン ゴリラ", option2: "イケメンすぎるゴリラ", option3: "圧倒的イケメンゴリラ", answer: "イ⭐︎ケ⭐︎メ⭐︎ン ゴリラ", image: UIImage(named: "シャバーニインスタ.jpg")!, difficulty: "A")
        let quiz74 = Quiz(text: "イケメンゴリラ、シャバーニがいる東山動物園の年間パスポートの値段はいくらか？(大人(高校生以上))", option1: "1500円", option2: "2000円", option3: "3500円", answer: "2000円", image: UIImage(named: "gorilla-lowpoly_dribbble.png")!, difficulty: "S")
        let quiz75 = Quiz(text: "ニシローランドゴリラの繁殖に日本で初めて成功した動物園はどこか？", option1: "京都市動物園", option2: "上野動物園", option3: "東山動植物園", answer: "京都市動物園", image: UIImage(named: "gorilla-dribble.jpg")!, difficulty: "A")
        let quiz76 = Quiz(text: "スペイン・バルセロナ（Barcelona）動物園で飼育されていた世界で唯一のアルビノ（先天性色素欠乏症）ゴリラのことを何というか？", option1: "ホワイトゴリラ", option2: "スノーフレーク", option3: "サワーホワイト", answer: "スノーフレーク", image: UIImage(named: "whiteGorilla.jpg")!, difficulty: "S")
        let quiz77 = Quiz(text: "1996年、シカゴのブルックフィールド動物園でのこと。3歳の男の子が謝ってゴリラの檻の中に転落してしまうという事故がありました。男の子の母親が助けを求めて叫ぶ中、檻の中にいたビンディという母ゴリラが、男の子を抱き上げて、係員の元へと届けたのです。彼女は、近づいてきたオスゴリラを唸って追い払うなど、男の子を庇う仕草もしたそうです。男の子を助けたゴリラの名前は何？", option1: "ビンディ", option2: "ハーレー", option3: "サニー", answer: "ビンディ", image: UIImage(named: "albumGorilla9.jpg")!, difficulty: "S")
        let quiz78 = Quiz(text: "かつて手話で人間とコミュニケーションをとった、メスのローランドゴリラがいた。そのゴリラの名前は？", option1: "メイ", option2: "ココ", option3: "ミキ", answer: "ココ", image: UIImage(named: "albumGorilla10.jpg")!, difficulty: "A")
        let quiz79 = Quiz(text: "ゴリラの死生観として言われているものは次のうちどれ？(諸説あり)", option1: "苦労のない穴にさようなら", option2: "生きてるだけで丸儲け", option3: "不撓不屈", answer: "苦労のない穴にさようなら", image: UIImage(named: "albumGorilla12.jpg")!, difficulty: "S")
        let quiz80 = Quiz(text: "ゴリラクリニックで行なっているAGA治療の名前は？", option1: "発毛ゴリラーズ", option2: "ゴリラ発毛", option3: "ゴリゴリ育毛", answer: "ゴリラ発毛", image: UIImage(named: "albumGorilla11.jpg")!, difficulty: "B")
        let quiz81 = Quiz(text: "「経営の神様」と言われている松下幸之助がリーダーの条件として、3つの要素をあげているが、それらの要素は全てゴリラそのものであるということで巷で話題になっている。次のうち、3つの要素に含まれていないものはどれか？", option1: "愛嬌", option2: "後ろ姿", option3: "主体性", answer: "主体性", image: UIImage(named: "albumGorilla13.jpg")!, difficulty: "B")
        let quiz82 = Quiz(text: "男前ゴリラ愛好会が編集に携わっているイケメンゴリラ写真集がある。その写真集の中では、東山動物園のシャバーニを筆頭にたくさんのイケメンゴリラが監修されているが、次のうちこの本で取り上げられていないゴリラは誰か？ ", option1: "ムサシ", option2: "ショウ", option3: "リキ", answer: "リキ", image: UIImage(named: "イケメンゴリラ写真集.jpg")!, difficulty: "A")
        let quiz83 = Quiz(text: "男前ゴリラ愛好会が編集に携わっているイケメンゴリラ写真集がある。この写真集ではいくつのイケメンゴリラの写真が掲載されているか？", option1: "35", option2: "56", option3: "62", answer: "56", image: UIImage(named: "albumGorilla15.jpg")!, difficulty: "S")
        let quiz84 = Quiz(text: "男前ゴリラ愛好会が編集に携わっているイケメンゴリラ写真集がある。この写真集では、イケメンゴリラの写真とともに様々な著名人の名言が監修されている。アメリカの俳優、ジェームズ・ディーンが述べている言葉は、次のうちどれか？", option1: "雲の上は、いつも晴れ。", option2: "夢を見るから、人生は輝く。", option3: "優しさこそ、本当の強さだ。", answer: "優しさこそ、本当の強さだ。", image: UIImage(named: "albumGorilla16.jpg")!, difficulty: "A")
        let quiz85 = Quiz(text: "男前ゴリラ愛好会が編集に携わっているイケメンゴリラ写真集がある。この写真集では、イケメンゴリラの写真とともに様々な著名人の名言が監修されている。「頼むから黙って、ただ愛させてくれ」という言葉を述べている人物は次のうちどれか？", option1: "イギリスの詩人　ジョン・ダン", option2: "フランスの哲学者　モンテーニュ", option3: "チャールズ・チャップリン", answer: "イギリスの詩人　ジョン・ダン", image: UIImage(named: "albumGorilla17.jpg")!, difficulty: "S")
        let quiz86 = Quiz(text: "イケメンゴリラとして名高い名声を立てていたムサシというゴリラが上野動物園にいた。そのムサシのキャッチフレーズとは？", option1: "体は大きいけれど心は繊細", option2: "マイペースで穏やかな紳士", option3: "心優しいマッチョ", answer: "マイペースで穏やかな紳士", image: UIImage(named: "albumGorilla26.jpg")!, difficulty: "S")
        let quiz87 = Quiz(text: "渋さが滲み出る貫禄の面持ちというキャッチフレーズで有名であったゴリラは次のうち誰か？", option1: "タロウ", option2: "ケンタ", option3: "ビンドン", answer: "ケンタ", image: UIImage(named: "albumGorilla18.jpg")!, difficulty: "A")
        let quiz88 = Quiz(text: "ゴリラが飼育員とともに逆立ちをしてみせたことで話題になった動物園があるのは次のうちどこか？", option1: "フロリダ", option2: "カリフォルニア", option3: "テキサス", answer: "フロリダ", image: UIImage(named: "albumGorilla19.jpg")!, difficulty: "C")
        
        //quizArray配列に問題を追加
        quizArray.append(quiz1)
        quizArray.append(quiz2)
        quizArray.append(quiz3)
        quizArray.append(quiz4)
        quizArray.append(quiz5)
        quizArray.append(quiz6)
        quizArray.append(quiz7)
        quizArray.append(quiz8)
        quizArray.append(quiz9)
        quizArray.append(quiz10)
        quizArray.append(quiz11)
        quizArray.append(quiz12)
        quizArray.append(quiz13)
        quizArray.append(quiz14)
        quizArray.append(quiz15)
        quizArray.append(quiz16)
        quizArray.append(quiz17)
        quizArray.append(quiz18)
        quizArray.append(quiz19)
        quizArray.append(quiz20)
        quizArray.append(quiz21)
        quizArray.append(quiz22)
        quizArray.append(quiz23)
        quizArray.append(quiz24)
        quizArray.append(quiz25)
        quizArray.append(quiz26)
        quizArray.append(quiz27)
        quizArray.append(quiz28)
        quizArray.append(quiz29)
        quizArray.append(quiz30)
        quizArray.append(quiz31)
        quizArray.append(quiz32)
        quizArray.append(quiz33)
        quizArray.append(quiz34)
        quizArray.append(quiz35)
        quizArray.append(quiz36)
        quizArray.append(quiz37)
        quizArray.append(quiz38)
        quizArray.append(quiz39)
        quizArray.append(quiz40)
        quizArray.append(quiz41)
        quizArray.append(quiz42)
        quizArray.append(quiz43)
        quizArray.append(quiz44)
        quizArray.append(quiz45)
        quizArray.append(quiz46)
        quizArray.append(quiz47)
        quizArray.append(quiz48)
        quizArray.append(quiz49)
        quizArray.append(quiz50)
        quizArray.append(quiz51)
        quizArray.append(quiz52)
        quizArray.append(quiz53)
        quizArray.append(quiz54)
        quizArray.append(quiz55)
        quizArray.append(quiz56)
        quizArray.append(quiz57)
        quizArray.append(quiz58)
        quizArray.append(quiz59)
        quizArray.append(quiz60)
        quizArray.append(quiz61)
        quizArray.append(quiz62)
        quizArray.append(quiz63)
        quizArray.append(quiz64)
        quizArray.append(quiz65)
        quizArray.append(quiz66)
        quizArray.append(quiz67)
        quizArray.append(quiz68)
        quizArray.append(quiz69)
        quizArray.append(quiz70)
        quizArray.append(quiz71)
        quizArray.append(quiz72)
        quizArray.append(quiz73)
        quizArray.append(quiz74)
        quizArray.append(quiz75)
        quizArray.append(quiz76)
        quizArray.append(quiz77)
        quizArray.append(quiz78)
        quizArray.append(quiz79)
        quizArray.append(quiz80)
        quizArray.append(quiz81)
        quizArray.append(quiz82)
        quizArray.append(quiz83)
        quizArray.append(quiz84)
        quizArray.append(quiz85)
        quizArray.append(quiz86)
        quizArray.append(quiz87)
        quizArray.append(quiz88)
        
        
        quizArray = Quiz.shuffle(quizArray: quizArray)
    }
    
    func showQuiz() {
        quizNumberLabel.text = String(quizNumber + 1) + "問目"
        quizImageView.image = quizArray[quizNumber].image
        quizTextView.text = quizArray[quizNumber].text
        option1Button.setTitle(quizArray[quizNumber].option1, for: .normal)
        option2Button.setTitle(quizArray[quizNumber].option2, for: .normal)
        option3Button.setTitle(quizArray[quizNumber].option3, for: .normal)
        
        //応用課題：問題画像のアニメーション
        quizImageView.alpha = 0.0
        UIView.animate(withDuration: 1.0) {
            self.quizImageView.alpha = 1.0
        }
    }
    
    //ボタン押して判定した後
    func resetQuiz() {
        point = 0
        quizNumber = 0
        self.quizArray = Quiz.shuffle(quizArray: self.quizArray)
        self.showQuiz()
    }
    //ボタン押して判定した後
    func updateQuiz() {
        quizNumber = quizNumber + 1
        
        if quizNumber == 10 {
            let alertText = "\(10)問中、\(point)問正解でした。"
            let alertController = UIAlertController(title: "結果", message: alertText, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: { (action) in
                self.resetQuiz()
                self.navigationController?.popViewController(animated: true);
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
            quizImageView.image = UIImage(named: "albumGorilla20.jpg")
            
            
        } else {
            showQuiz()
        }
    }
    
    @IBAction func selectOption1() {
        if option1Button.titleLabel?.text == quizArray[quizNumber].answer {
            print("正解！")
            point = point + 1
            maruAnimation()
        } else {
            print("不正解！")
            batsuAnimation()
        }
        
        //updateQuiz()
        
    }
    
    @IBAction func selectOption2() {
        if option2Button.titleLabel?.text == quizArray[quizNumber].answer {
            print("正解！")
            point = point + 1
            maruAnimation()
        } else {
            print("不正解！")
            batsuAnimation()
        }
        //updateQuiz()
        
    }
    
    @IBAction func selectOption3() {
        if option3Button.titleLabel?.text == quizArray[quizNumber].answer {
            print("正解！")
            point = point + 1
            maruAnimation()
        } else {
            print("不正解！")
            batsuAnimation()
        }
        //updateQuiz()
    }
    
    //応用課題：まるのアニメーション
    func maruAnimation() {
        _ = SweetAlert().showAlert("Good job!", subTitle: "Good Answer!", style: AlertStyle.success)
        updateQuiz()
    }
    
    //応用課題：ばつのアニメーション
    func batsuAnimation() {
        animationImageView.image = UIImage(named: "batsu.png")
        //アニメーション
        animationImageView.alpha = 1.0
        UIView.animate(withDuration: 2.0, animations: {
            self.animationImageView.alpha = 0.0
            
        }, completion: { (isFinished) in
            let alertText = self.quizArray[self.quizNumber].answer
            let alertController = UIAlertController(title: "正解", message: alertText, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: { (action) in
                self.updateQuiz()
                
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
            
        })
    }
}
