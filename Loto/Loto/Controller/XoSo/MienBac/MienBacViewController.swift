//
//  MienBacViewController.swift
//  Loto
//
//  Created by Nam Hoang Van on 8/30/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import UIKit
import SideMenu

class MienBacViewController: BaseViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupCollection()
    }
    
    func setupCollection() {
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(UINib(nibName: "MienBacCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
    }

    // MARK: - Action View Header
    @IBAction func btnMenu(_ sender: UIButton) {
        self.openMenu()
    }

}

extension MienBacViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MienBacCollectionViewCell
        cell.loadDataCells()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: CGFloat(self.view.bounds.size.width), height: CGFloat(897))
    }
}
