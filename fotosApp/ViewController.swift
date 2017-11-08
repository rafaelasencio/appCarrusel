//
//  ViewController.swift
//  fotosApp
//
//  Created by Rafael Asencio on 6/11/17.
//  Copyright © 2017 Rafael Asencio. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fotosCollectionView.delegate = self
        fotosCollectionView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    let imageNamesArr : [String] = ["1","2","3","4","5"]
    
    @IBOutlet weak var fotosCollectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "fotoCeldaCollectionview", for: indexPath) as!
            
        imagesCollectionViewCell
        
        cell.imagePerCell.image = UIImage (named: imageNamesArr[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return imageNamesArr.count
    }
    func collectionView(_ collectionView: UICollectionView, layoutcollectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        
        let screen = UIScreen.main.bounds
        
        return CGSize(width: screen.width, height: screen.height)
    }
}

