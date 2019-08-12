//
//  AlbumViewController.swift
//  GorillaGorillaGorilla
//
//  Created by 優樹永井 on 2018/06/03.
//  Copyright © 2018年 優樹永井. All rights reserved.
//

import UIKit

class AlbumViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var gorillaCollectionView: UICollectionView!
    var GorillaImageName = ["albumGorilla1.jpg", "albumGorilla2.jpg", "albumGorilla3.jpg", "albumGorilla4.jpg", "albumGorilla5.jpg", "albumGorilla6.jpg", "albumGorilla7.jpg", "albumGorilla8.jpg", "albumGorilla9.jpg", "albumGorilla10.jpg", "albumGorilla11.jpg", "albumGorilla12.jpg", "albumGorilla13.jpg", "albumGorilla14.jpg", "albumGorilla15.jpg", "albumGorilla16.jpg", "albumGorilla17.jpg", "albumGorilla18.jpg", "albumGorilla19.jpg", "albumGorilla20.jpg", "albumGorilla21.jpg", "albumGorilla22.jpg", "albumGorilla23.jpg", "albumGorilla24.jpg", "albumGorilla25.jpg", "albumGorilla26.jpg", "albumGorilla27.jpg", "albumGorilla28.jpg", "albumGorilla29.jpg", "albumGorilla30.jpg", "albumGorilla31.jpg", "albumGorilla32.jpg", "albumGorilla33.jpg", "albumGorilla34.jpg", "albumGorilla35.jpg", "albumGorilla36.jpg", "albumGorilla37.jpg", "albumGorilla38.jpg", "albumGorilla39.jpg", "albumGorilla40.jpg", "albumGorilla41.jpg", "albumGorilla42.jpg", "albumGorilla43.jpg", "albumGorilla44.jpg", "albumGorilla45.jpg", "albumGorilla46.jpg", "albumGorilla47.jpg", "albumGorilla48.jpg", "albumGorilla49.jpg", "albumGorilla50.jpg", "albumGorilla51.jpg", "albumGorilla52.jpg", "albumGorilla53.jpg", "albumGorilla54.jpg", "albumGorilla55.jpg", "albumGorilla56.jpg", "albumGorilla57.jpg", "albumGorilla58.jpg", "albumGorilla59.jpg", "albumGorilla60.jpg", "albumGorilla61.jpg", "albumGorilla62.jpg", "albumGorilla63.jpg", "albumGorilla64.jpg", "albumGorilla65.jpg", "albumGorilla66.jpg", "albumGorilla67.jpg", "albumGorilla68.jpg", "albumGorilla69.jpg", "albumGorilla70.jpg", "albumGorilla71.jpg", "albumGorilla72.jpg", "albumGorilla73.jpg", "albumGorilla74.jpg", "albumGorilla75.jpg"]


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        gorillaCollectionView.delegate = self
        gorillaCollectionView.dataSource = self
        
//        let flowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
//        flowLayout.itemSize = CGSize(width: 119, height: 119)
//        flowLayout.minimumInteritemSpacing = 1.0
//        flowLayout.minimumLineSpacing = 1.0
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let width: CGFloat = UIScreen.main.bounds.width / 3 - 2
        let height = width
        return CGSize(width: width, height: height)
    }
    
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
//
//        return UIEdgeInsetsMake(5, 10, 0, 7)
//    }

    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return GorillaImageName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AlbumCell", for: indexPath)
        let gorillaImageView = cell.viewWithTag(1) as! UIImageView
        gorillaImageView.image = UIImage(named: GorillaImageName[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toDetailPicture", sender: nil)
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailViewController = segue.destination as! DetailAlbumViewController
        let selectedIndex = gorillaCollectionView.indexPathsForSelectedItems![0]
        detailViewController.imageName = GorillaImageName[selectedIndex.row]
    }
    
    
    
//    func setBorderToImageView(imageView: UIImageView) {
//        imageView.layer.borderWidth = 1
//        imageView.layer.borderColor = UIColor.black.cgColor
//    }
    
//    @IBAction func tapButton(sender: UIButton) {
//        number1 = Int(arc4random_uniform(50))
//        number2 = Int(arc4random_uniform(50))
//        number3 = Int(arc4random_uniform(50))
//        number4 = Int(arc4random_uniform(50))
//        number5 = Int(arc4random_uniform(50))
//        number6 = Int(arc4random_uniform(50))
//
//        firstImageView.image = UIImage(named: "albumGorilla\(number1 + 1).jpg")
//        secondImageView.image = UIImage(named: "albumGorilla\(number2 + 1).jpg")
//        thirdImageView.image = UIImage(named: "albumGorilla\(number3 + 1).jpg")
//        fourthImageView.image = UIImage(named: "albumGorilla\(number4 + 1).jpg")
//        fifthImageView.image = UIImage(named: "albumGorilla\(number5 + 1).jpg")
//        sixImageView.image = UIImage(named: "albumGorilla\(number6 + 1).jpg")
//
//    }


}
