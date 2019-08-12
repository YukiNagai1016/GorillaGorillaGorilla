//
//  GorillaListViewController.swift
//  GentleGorillaApp
//
//  Created by 優樹永井 on 2018/05/08.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit

// 変数の定義
var gorillaTitle = ["ドン","ピーコ","ネネ","ローラ","ショウ","トト","ゲンキ","ナナ(コケイタ)","タロウ","モンタ","モモコ","モモタロウ","アイ","ハオコ","シャバーニ","コモモ","ゲンタロウ","キヨマサ","モモカ","アニー","リキ"]
var gorillaImages = [UIImage(named: "ドン.jpg"),
                     UIImage(named: "ピーコ.jpg"),
                     UIImage(named: "ネネ.jpg"),
                     UIImage(named: "ローラ.jpg"),
                     UIImage(named: "ショウ.jpg"),
                     UIImage(named: "トト.jpg"),
                     UIImage(named: "ゲンキ.jpg"),
                     UIImage(named: "ナナ.jpg"),
                     UIImage(named: "タロウ.jpg"),
                     UIImage(named: "モンタ.jpg"),
                     UIImage(named: "モモコ.jpg"),
                     UIImage(named: "モモタロウ.jpg"),
                     UIImage(named: "アイ.jpg"),
                     UIImage(named: "ハオコ.jpg"),
                     UIImage(named: "シャバーニ.jpg"),
                     UIImage(named: "コモモ.jpg"),
                     UIImage(named: "ゲンタロウ.jpg"),
                     UIImage(named: "キヨマサ.jpg"),
                     UIImage(named: "モモカ.jpg"),
                     UIImage(named: "アニー.jpg"),
                     UIImage(named: "IMG_2529.jpg"),]

var gorillaNames = ["ドン","ピーコ","ネネ","ローラ","ショウ","トト","ゲンキ","ナナ","タロウ","モンタ","モモコ","モモタロウ","アイ","ハオコ","シャバーニ","コモモ","ゲンタロウ","キヨマサ","モモカ","アニー","リキ"]

var gorillaSex = ["♂","♀","♀","♀","♂","♀","♀","♀","♂","♂","♀","♂","♀","♂","♂","♀","♂","♂","♀","♀","♂"]
var gorillaType = ["ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ","ニシローランドゴリラ"]
var gorillaBirthDay = ["1969.07","1970.02","1972","1977.09.21","1977","1978","1986.06.24","1982","1973.04.20","1984.09.25","1983.06.03","2000.07.03","2003.02.27","1993.08.21","1996.10.20","2009.11.14","2011.12.21","2012.11.01","2013.04.24","2013.06.02","2017.10.09"]
var gorillaLiving = ["仙台市八木山動物公園","東京都恩賜上野動物園","名古屋市東山動植物園","千葉市動物公園","浜松市動物園","東京都恩賜上野動物園","京都市動物園","東京都恩賜上野動物園","日本モンキーセンター","千葉市動物公園","東京都恩賜上野動物園","京都市動物園","名古屋市東山動植物園","東京都恩賜上野動物園","名古屋市東山動植物園","東京都恩賜上野動物園","京都市動物園","名古屋市東山動植物園","東京都恩賜上野動物園","名古屋市東山動植物園","東京都恩賜上野動物園"]
var gorillaDescription = ["2016年1月時点で国内最高齢のゴリラ。 2007年にメスのローラが亡くなった後、単独で暮らしている。昔はとてもやんちゃで、ドラミングしたり、物を投げつけてきたりしたが、最近はゆったりと過ごしている。",
                          "ブルブル・タイコ・トヨコの中にはあまり馴染めず、モートに降りて住みわけをしていた。以前は麻袋をかぶって遊んでいたが、最近はきれいな布を体にかけたりするのが好き。「ゴリラの住む森」1番のおしゃれさん。",
                          "キヨマサの母親である。",
                          "リラコの娘として別府ラクテンチで生まれ、東武動物公園へ嫁入りしたが、オスに先立たれてからはずっと一頭で暮らしてきた。リラコとは額の部分が似ている。",
                          "飼育員が頼むと、手でシュートの扉下の小枝をきれいにはらって掃除をし、扉を閉めやすいよう手伝うことがある。以前見られた、草を根ごと引き抜いて投げつけることは見られなくなる。一人でマスターベーションをすることもなく、シュートでのダイコとの交尾も、飼育員が見ていても神経質にはならない。（2017年現在）数年前より両目の瞼の上に大きなコブができている。痛みや視力に影響はなさそうで、年齢や麻酔への心配もあるため経過観察中。",
                          "浜松市動物園から来園したショウと仲良しで、交尾をすることもあった。同じ群れのコモモと仲が良く、いつも一緒に過ごしているため、親子に間違われることもある。",
                          "京都市動物園での3世代目の個体。 ふっくらした体つきが特徴。",
                          "国際血統登録番号は1231、国際表記「Nana」。 (スペイン生まれという情報もあり)「コケイタ」と呼ばれていたが、とべ動物園に来てから命名式がおこなわれ「ナナ」という名前になった。以前の名残で、「コケ」と呼ばれることもある。身長低く、ずんぐりむっくり。ゲンタとの人工授精もおこなわれたが、成功しなかった。",
                          "漢字表記は「太郎」。本名はゴリ（Gori）で、国際血統登録にもこの名前で登録されているが、普段はJMCで名付けられた愛称の「太郎」で呼ばれる。母親はデルフィ（Delphi　国際登録番号0230}、父親はフリッツ（Fritz　国際登録番号0253）。",
                          "国際血統登録書には、推定1986年、野生生まれと記載されているが、1984年9月25日にスペインで生まれたという記録もある。有竹鳥獣店により1987年に輸入され、「ナイス」と呼ばれていた。ヒトの方に寄ってきて静かにしている。ヒトが目の前で跳んだり足踏みをして走りまわり始めると、同じように放飼場内をドラミングやジャンプをしながら追いかけまわる。",
                          "国際血統登録書には、推定1984年、野生生まれと記載されているが、1983年6月3日にスペインで生まれたという記録もある。有竹鳥獣店により1987年に輸入され、「メリー」と呼ばれていた。モモタロウの母親だが、子どもが騒がしくなると、ときにオスのようなドラミングをしてそれを制止する。ヒトの行動にとても興味を示す。",
                          "一人遊びもするが、体を動かしたくてたまらない様子。ヒトが目の前を動き回ると、追いかけながら放飼場全域を走りまわる。木によじ登り、壁に手をたたきつけて大きな音を出したり、でんぐり返りをしながらかけまわったりする。来園者側にものを投げるようになったため、現在はけが防止のために枝を与えないようにしている。",
                          "アニーの母親である。",
                          "国際血統登録番号は1284。母親：Mouila（0561、野生生まれ）　父親：Kibabu（0652、英国ハウレッツ生まれ）。シャバーニ は父母が一緒の弟。 臀部が発達しており、お尻が大きい。よく走り、動きも早い。",
                          "国内ゴリラの繁殖のために、オーストラリアの動物園から兄のハオコとともに来日した。超絶イケメンと話題に。",
                          "国内で6年ぶり(東山のアイ以来)に出産となった待望の子供。",
                          "父親がモモタロウで、母親がゲンキ(人工保育)である。",
                          "父親がシャバーニで、母親がネネである。",
                          "父親がハオコで、母親がモモコである。",
                          "出生時、頭胴長29cm　体重1,955g。母親の育児が十分でなく、人工保育となった。2014年11月までに家族群に戻っている。\n 父親がシャバーニで、母親がアイ(人工保育)である。",
                          "父親がハオコで、母親がモモコである。"]
var gorillaPersonality = ["頑固で保守的な性格で、独自のこだわりがたくさんある。体は大きいけれど心は繊細で気が優しい。正面からジッと見つめることはなく、横目で控えめにチラッと見る。イケメンゴリラ写真集に監修されている。\n[イケメンポイント]\nそばにいると山のように感じるほど体が大きいが、性格はとても繊細。新しい飼育員とは時間をかけてゆっくり関係をつくる。慣れてきた頃に、飼育員が「ドンちゃんありがとう」と言って親指を触ると深くうなってくれる。(イケメンゴリラ写真集参照)",
                          "攻撃的で勝気。仲良しのリラコがオスに追われて叫ぶと、モートから登ってきてリラコに加勢することもあった。",
                          "",
                          "かなりの寂しがりや。生まれて間もなく母親から離されて人工保育されたので、リラコを母親と認識しておらず、性格も人間っぽい。",
                          "この世を去った仲間を想う優しさを持つ！ヒトに関心があり、シュートの下から、靴の裏に指や小枝を刺して相手の反応を楽しむなど、好奇心旺盛である。すごく特徴的な目の上に2つの大きなコブがあって、メガネをかけているように見える。イケメンゴリラ写真集に監修されている。\n[イケメンポイント]\n厳つい顔に反して、とても臆病で繊細。同居していたメスが死亡した1年後、彼女の部屋を覗くことが多くなり、その後約１ヶ月、元気がない日々が続く。体に以上がないが。その翌年も同じ症状が見られたことから、別れに胸を痛めての一連の行動だったよう。(イケメンゴリラ写真集参照)",
                          "オスとうまく付き合える。ゴリラにもヒトにも友好的。",
                          "こどもの時は天真爛漫。行きたいところがある時、お母さんを盾にすることがあった。神経質な性格だったが、最近は社交的になってきた。果物が好物。",
                          "人に育てられたのが影響しているのか、男性の飼育員が女性を案内していると怒って物を投げる。食べ物は何でも大好きで、ガツガツ食べる。ゲンタとは子供の頃は兄妹のように仲が良かったが、大人になってからは距離をとっていた。",
                          "つぶらな瞳で女性の心をわしづかみ!? 物静かで手先が器用。リンゴが好物。イケメンゴリラ写真集に監修されている。\n[イケメンポイント]\nオスゴリラとしては小柄。背中からお尻にかけてのセクシーなラインが魅力的。好奇心旺盛で、室内のガラス面に出てきては来園者の顔を覗き込む。特に気になる女性がいるとじっと見つめる。愛らしいつぶらな瞳の魅力は、見つめられた人だけがわかる。(イケメンゴリラ写真集参照)",
                          "あふれんばかりの男っぷり！イケメンゴリラ写真集に監修されている。\n[イケメンポイント]\n筋骨隆々の逞しい姿で岩場の端から観客通路をにらみつける姿は、まさに威風堂々。太い指先を器用に使い髭の手入れをかかさない。妙齢で好みのヒトを見つけると、恋鳴きを披露することも。もみあげから顎髭へと続くラインがチャームポイント。(イケメンゴリラ写真集参照)",
                          "",
                          "心優しいマッチョ！ゲンタロウの父。イケメンゴリラ写真集に監修されている。\n[イケメンポイント]\n日本一筋肉質(マッチョ)なゴリラ。見かけは大きくたくましいため怖そうに見えるが、性格はとても温和で食べることが大好き。息子のゲンタロウと遊ぶなど子煩悩ぶりも発揮。唯一の弱点は、虫。しかしシルバーバックらしく、不審なものには先頭を切って立ち向かう。(イケメンゴリラ写真集参照)",
                          "",
                          "正義感溢れる群れのリーダー。タロンガ動物園では、大家族のなかで兄弟姉妹たちと育ったため、相手にやさしい。神経質なところがある。イケメンゴリラ写真集に監修されている。\n[イケメンポイント]\n体の大きいシルバーバック。特に上半身が筋肉質でお尻が大きい。コモモとモモカの父でもある。優しい性格。リーダーとして群れをまとめ、仲間同士が揉めるとすぐにかけつける。シャバーニとは兄弟でハオコが兄である。(イケメンゴリラ写真集参照)",
                          "頼りがいがある優しいイクメン。明るい性格。来日時はまだ幼さが残ったが、その後立派なシルバーバックに成長した。イケメンゴリラとして有名なゴリラのシャバーニは実はイケメンすぎるが故に写真集を出している。その写真集のタイトルは、「イ⭐︎ケ⭐︎メ⭐︎ン ゴリラ」。\n[イケメンポイント]\nがっしりと体格に鋭い目を持つ。キヨマサとアニーの父親。若いときは乱暴なところもあったが、父になり落ち着きを見せる。群れの中でケンカがおきたときは弱いものを守り、強いものを制する。イケメンゴリラとして名古屋はじめ日本各地、世界で話題に。(イケメンゴリラ写真集参照)",
                          "",
                          "将来は父親譲りの立派なシルバーバック！？ モモタロウの子ども。イケメンゴリラ写真集に監修されている。\n[イケメンポイント]\n日本生まれの両親を持つ、国内初のゴリラ。来園者に対して遊びかけを行ったり、つぶらな瞳で見つめたりするなど、ハートをわしづかみにしている。毎日よく動き回り、将来は父のモモタロウのような立派な体格になると思われる。(イケメンゴリラ写真集参照)",
                          "",
                          "",
                          "",
                          ""]

class GorillaListViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    // UIパーツの定義
    @IBOutlet var gorillaListTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        
        gorillaListTableView.dataSource = self
        gorillaListTableView.delegate = self
        
//        // テーブルの高さを自動で調節
//        gorillaListTableView.estimatedRowHeight = 100 //セルの高さ
//        self.gorillaListTableView.rowHeight = UITableViewAutomaticDimension
        
        // メモが記入されていないスペースの不要な線を消す
        gorillaListTableView.tableFooterView = UIView()
        
        //カスタムセルの登録
        let nib = UINib(nibName: "GorillaListTableViewCell", bundle: Bundle.main)
        gorillaListTableView.register(nib, forCellReuseIdentifier: "GorillaListCell")
        
        //バー背景色
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        // rgb値で色指定する場合のコード UIColor(red: 219, green: 74, blue: 57, alpha:1)
        //バーアイテムカラー
        self.navigationController?.navigationBar.tintColor = UIColor.yellow
        //ナビゲーションタイトル文字列の変更
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.yellow]
        
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "GorillaListCell") as! GorillaListTableViewCell
        
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
        self.performSegue(withIdentifier: "toDetailGorilla", sender: nil)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //高さを指定
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 260
        
    }
    
    // 詳細画面に値を受け渡すコード
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDetailGorilla" {
            let detailViewController = segue.destination as! DetailGorillaListViewController
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
