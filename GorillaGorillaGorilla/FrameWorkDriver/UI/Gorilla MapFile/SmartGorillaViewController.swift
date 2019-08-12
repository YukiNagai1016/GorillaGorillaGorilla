//
//  SmartGorillaViewController.swift
//  GorillaGorillaGorilla
//
//  Created by 優樹永井 on 2018/06/06.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit


class SmartGorillaViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    // 変数の定義
    var gorillaTitle = ["ドン","ムサシ","ショウ","タロウ","モンタ","モモタロウ","ハオコ","シャバーニ","ゲンタロウ","ケンタ","ビンドン","キヨマサ"]
    var gorillaImages = [UIImage(named: "ドン.jpg"),
                         
                         UIImage(named: "ムサシ.jpg"),
                         
                         UIImage(named: "ショウ.jpg"),
                         
                         UIImage(named: "タロウ.jpg"),
                         UIImage(named: "モンタ.jpg"),
                         
                         UIImage(named: "モモタロウ.jpg"),
                         
                         UIImage(named: "ハオコ.jpg"),
                         UIImage(named: "シャバーニ.jpg"),
                         
                         UIImage(named: "ゲンタロウ.jpg"),
                         UIImage(named: "ケンタ.jpg"),
                         UIImage(named: "ピンドン.jpg"),
                         UIImage(named: "キヨマサ.jpg")
                         ]
    
    var gorillaNames = ["ドン","ムサシ","ショウ","タロウ","モンタ","モモタロウ","ハオコ","シャバーニ","ゲンタロウ","ケンタ","ビンドン","キヨマサ"]
    
    var gorillaSex = ["♂","♂","♂","♂","♂","♂","♂","♂","♂","♂","♂","♂"]
    var gorillaType = ["ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ"]
    var gorillaBirthDay = ["1969.07","1980.07.04","1977","1973.04.20","1984.09.25","2000.07.03","1993.08.21","1996.10.20","2011.12.21","1977(推定)","1981.07.19","2012.11.01"]
    var gorillaLiving = ["仙台市八木山動物公園","東京都恩賜上野動物園","浜松市動物園","日本モンキーセンター","千葉市動物公園","京都市動物園","東京都恩賜上野動物園","名古屋市東山動植物園","京都市動物園","千葉市動物公園","福岡市動物園","名古屋市東山動植物園"]
    var gorillaDescription = ["2016年1月現在国内最高齢のゴリラ。 2007年にメスのローラが亡くなった後、単独で暮らしている。昔はとてもやんちゃで、ドラミングしたり、物を投げつけてきたりしたが、最近はゆったりと過ごしている。",
                              "（1） 死亡確認日\n  平成28年7月25日（月曜）\n\n（2） 名前\n  ムサシ\n\n(3） 性別\nオス\n\n（4） 年齢\n   36歳\n  1980年7月4日イギリス・ブリストル動物園生まれ\n\n（5） 来園\n    2000年10月6日　釧路市動物園（北海道釧路市）より来園\n\n（6） 死因\n   肺炎\n\n（7） 経緯\n  2016年6月14日に体の震えなどの症状が見られ、2007年に発症した脳梗塞の再発を疑い治療を行ってきましたが、次第に元気・食欲を失い、7月18日から飼育係の呼びかけに応えなくなりました。7月25日午後から全身麻酔下での検査を実施しましたが、麻酔からの覚醒時に体調が急変しました。蘇生処置を施しましたが、残念ながら19時00分に死亡を確認しました。",
                              "飼育員が頼むと、手でシュートの扉下の小枝をきれいにはらって掃除をし、扉を閉めやすいよう手伝うことがある。以前見られた、草を根ごと引き抜いて投げつけることは見られなくなる。一人でマスターベーションをすることもなく、シュートでのダイコとの交尾も、飼育員が見ていても神経質にはならない。（2017年現在）数年前より両目の瞼の上に大きなコブができている。痛みや視力に影響はなさそうで、年齢や麻酔への心配もあるため経過観察中。",
                              
                              "漢字表記は「太郎」。本名はゴリ（Gori）で、国際血統登録にもこの名前で登録されているが、普段はJMCで名付けられた愛称の「太郎」で呼ばれる。母親はデルフィ（Delphi　国際登録番号0230}、父親はフリッツ（Fritz　国際登録番号0253）。",
                              "国際血統登録書には、推定1986年、野生生まれと記載されているが、1984年9月25日にスペインで生まれたという記録もある。有竹鳥獣店により1987年に輸入され、「ナイス」と呼ばれていた。ヒトの方に寄ってきて静かにしている。ヒトが目の前で跳んだり足踏みをして走りまわり始めると、同じように放飼場内をドラミングやジャンプをしながら追いかけまわる。",
                              
                              "一人遊びもするが、体を動かしたくてたまらない様子。ヒトが目の前を動き回ると、追いかけながら放飼場全域を走りまわる。木によじ登り、壁に手をたたきつけて大きな音を出したり、でんぐり返りをしながらかけまわったりする。来園者側にものを投げるようになったため、現在はけが防止のために枝を与えないようにしている。",
                              
                              "国際血統登録番号は1284。母親：Mouila（0561、野生生まれ）　父親：Kibabu（0652、英国ハウレッツ生まれ）。シャバーニ は父母が一緒の弟。 臀部が発達しており、お尻が大きい。よく走り、動きも早い。",
                              "国内ゴリラの繁殖のために、オーストラリアの動物園から兄のハオコとともに来日した。超絶イケメンと話題に。",
                              
                              "父親がモモタロウで、母親がゲンキ(人工保育)である。",
                              "今は亡きケンタ。ダントツの渋さを誇り、貫禄のあるゴリラだった。",
                              "今は亡きピンドン。モデルのようなゴリラであった。",
                              "父親がシャバーニで、母親がネネである。"
                              ]
    var gorillaPersonality = ["頑固で保守的な性格で、独自のこだわりがたくさんある。体は大きいけれど心は繊細で気が優しい。正面からジッと見つめることはなく、横目で控えめにチラッと見る。イケメンゴリラ写真集に監修されている。\n[イケメンポイント]\nそばにいると山のように感じるほど体が大きいが、性格はとても繊細。新しい飼育員とは時間をかけてゆっくり関係をつくる。慣れてきた頃に、飼育員が「ドンちゃんありがとう」と言って親指を触ると深くうなってくれる。(イケメンゴリラ写真集参照)",
                              
                              "「マイペースで穏やかな紳士」\n [イケメンポイント]\n 背が高く、華奢。性格が目に表れているのか、穏やかな目をしている。現在は1頭のみでの飼育なので他のゴリラとの接触はないが、飼育員や人の女性に対しても友好的で優しいジェントルマン。(イケメンゴリラ写真集参照)",
                              "この世を去った仲間を想う優しさを持つ！ヒトに関心があり、シュートの下から、靴の裏に指や小枝を刺して相手の反応を楽しむなど、好奇心旺盛である。すごく特徴的な目の上に2つの大きなコブがあって、メガネをかけているように見える。イケメンゴリラ写真集に監修されている。\n[イケメンポイント]\n厳つい顔に反して、とても臆病で繊細。同居していたメスが死亡した1年後、彼女の部屋を覗くことが多くなり、その後約１ヶ月、元気がない日々が続く。体に以上がないが。その翌年も同じ症状が見られたことから、別れに胸を痛めての一連の行動だったよう。(イケメンゴリラ写真集参照)",
                              
                              "つぶらな瞳で女性の心をわしづかみ!? 物静かで手先が器用。リンゴが好物。イケメンゴリラ写真集に監修されている。\n[イケメンポイント]\nオスゴリラとしては小柄。背中からお尻にかけてのセクシーなラインが魅力的。好奇心旺盛で、室内のガラス面に出てきては来園者の顔を覗き込む。特に気になる女性がいるとじっと見つめる。愛らしいつぶらな瞳の魅力は、見つめられた人だけがわかる。(イケメンゴリラ写真集参照)",
                              "あふれんばかりの男っぷり！イケメンゴリラ写真集に監修されている。\n[イケメンポイント]\n筋骨隆々の逞しい姿で岩場の端から観客通路をにらみつける姿は、まさに威風堂々。太い指先を器用に使い髭の手入れをかかさない。妙齢で好みのヒトを見つけると、恋鳴きを披露することも。もみあげから顎髭へと続くラインがチャームポイント。(イケメンゴリラ写真集参照)",
                             
                              "心優しいマッチョ！ゲンタロウの父。イケメンゴリラ写真集に監修されている。\n[イケメンポイント]\n日本一筋肉質(マッチョ)なゴリラ。見かけは大きくたくましいため怖そうに見えるが、性格はとても温和で食べることが大好き。息子のゲンタロウと遊ぶなど子煩悩ぶりも発揮。唯一の弱点は、虫。しかしシルバーバックらしく、不審なものには先頭を切って立ち向かう。(イケメンゴリラ写真集参照)",
                             
                              "正義感溢れる群れのリーダー。タロンガ動物園では、大家族のなかで兄弟姉妹たちと育ったため、相手にやさしい。神経質なところがある。イケメンゴリラ写真集に監修されている。\n[イケメンポイント]\n体の大きいシルバーバック。特に上半身が筋肉質でお尻が大きい。コモモとモモカの父でもある。優しい性格。リーダーとして群れをまとめ、仲間同士が揉めるとすぐにかけつける。シャバーニとは兄弟でハオコが兄である。(イケメンゴリラ写真集参照)",
                              "頼りがいがある優しいイクメン。明るい性格。来日時はまだ幼さが残ったが、その後立派なシルバーバックに成長した。イケメンゴリラとして有名なゴリラのシャバーニは実はイケメンすぎるが故に写真集を出している。その写真集のタイトルは、「イ⭐︎ケ⭐︎メ⭐︎ン ゴリラ」。\n[イケメンポイント]\nがっしりと体格に鋭い目を持つ。キヨマサとアニーの父親。若いときは乱暴なところもあったが、父になり落ち着きを見せる。群れの中でケンカがおきたときは弱いものを守り、強いものを制する。イケメンゴリラとして名古屋はじめ日本各地、世界で話題に。(イケメンゴリラ写真集参照)",
                              
                              "将来は父親譲りの立派なシルバーバック！？ モモタロウの子ども。イケメンゴリラ写真集に監修されている。\n[イケメンポイント]\n日本生まれの両親を持つ、国内初のゴリラ。来園者に対して遊びかけを行ったり、つぶらな瞳で見つめたりするなど、ハートをわしづかみにしている。毎日よく動き回り、将来は父のモモタロウのような立派な体格になると思われる。(イケメンゴリラ写真集参照)",
                              "渋さがにじみ出る貫禄の面持ち。\n[イケメンポイント]\n若い頃の勢いはほとんどないが、時折見せる腕を振り上げながら短く息を吐く姿は全盛期を彷彿させる。長めでカールした体毛と、隆起した頭頂部で遠くを見つめる姿は、老成円熟の域に達した感すらある。(イケメンゴリラ写真集参照)",
                              "カメラ目線でイケメンっぷりを披露。\n[イケメンポイント]\nオスゴリラとしては小柄。性格はマイペースで少し短気。カメラを向けられても嫌がる様子もなく、カメラ目線で応えて男前ぶりが来園者のブログなどで披露されていた。(イケメンゴリラ写真集参照)",
                              "やんちゃざかりの男の子。\n[イケメンポイント]\nシャバーニとネネの子ども。やんちゃざかりの男の子。まだまだ甘えん坊で、不安になると母親のネネのもとにもどり抱きつく。異母兄弟のアニーとも仲がよく運動場でじゃれ合う姿が微笑ましい。(イケメンゴリラ写真集参照)"
                              ]
    
    // UIパーツの定義
    @IBOutlet var gorillaListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gorillaListTableView.dataSource = self
        gorillaListTableView.delegate = self

        // メモが記入されていないスペースの不要な線を消す
        gorillaListTableView.tableFooterView = UIView()
        
        //カスタムセルの登録
        let nib = UINib(nibName: "SmartGorillaTableViewCell", bundle: Bundle.main)
        gorillaListTableView.register(nib, forCellReuseIdentifier: "SmartGorillaCell")
        
        //バー背景色
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        // rgb値で色指定する場合のコード UIColor(red: 219, green: 74, blue: 57, alpha:1)
        //バーアイテムカラー
        self.navigationController?.navigationBar.tintColor = UIColor.yellow
        //ナビゲーションタイトル文字列の変更
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.yellow]
        
        // ナビゲーションバーの曇りガラス効果オフ
        //self.navigationController!.navigationBar.isTranslucent = false
        
        // メモが記入されていないスペースの不要な線を消す
        gorillaListTableView.tableFooterView = UIView()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // セクション内のセルの数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gorillaNames.count
    }
    
    // セルのデータを指定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SmartGorillaCell") as! SmartGorillaTableViewCell
        
        //        // タグ付け機能により表示させる
        //        let gorillaImageView = cell.viewWithTag(1) as! UIImageView
        //        let gorillaNameLabel = cell.viewWithTag(2) as! UILabel
        //        gorillaImageView.image = gorillaImages[indexPath.row]
        //        gorillaNameLabel.text = gorillaNames[indexPath.row]
        
        cell.gorillaImageView.image = gorillaImages[indexPath.row]
        cell.gorillaNameLabel.text = gorillaNames[indexPath.row]
        
        //cellを返す
        return cell
    }
    
    // テーブルのセルが選択された時の処理
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toDetailSmartGorilla", sender: nil)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //高さを指定
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 215
    }
    
    // 詳細画面に値を受け渡すコード
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDetailSmartGorilla" {
            let detailViewController = segue.destination as! DetailSmartGorillaViewController
            let selectedIndexPath = gorillaListTableView.indexPathForSelectedRow!
            detailViewController.selectedTitle = gorillaTitle[selectedIndexPath.row]
            detailViewController.selectedImageName = gorillaImages[selectedIndexPath.row]
            detailViewController.selectedName = gorillaNames[selectedIndexPath.row]
            detailViewController.selectedSex = gorillaSex[selectedIndexPath.row]
            detailViewController.selectedType = gorillaType[selectedIndexPath.row]
            detailViewController.selectedBirthDay = gorillaBirthDay[selectedIndexPath.row]
            detailViewController.selectedLiving = gorillaLiving[selectedIndexPath.row]
            detailViewController.selectedPersonality = gorillaPersonality[selectedIndexPath.row]
            detailViewController.selectedDescription = gorillaDescription[selectedIndexPath.row]
        }
        
    }

}
