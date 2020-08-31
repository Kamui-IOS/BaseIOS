//
//  MienBacViewController.swift
//  Loto
//
//  Created by Nam Hoang Van on 8/30/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import UIKit
import SideMenu

class MienBacViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var menu: SideMenuNavigationController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createSideMenu()
        // Do any additional setup after loading the view.
//        self.collectionView.delegate = self
//        self.collectionView.dataSource = self
//        self.collectionView.register(UINib(nibName: "MienBacViewController", bundle: nil), forCellWithReuseIdentifier: "cells0")
    }
    
    
    // MARK: - CollectionView
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 1
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cells0", for: indexPath) as! MienBacCollectionViewCell
//        cell.loadDataCells()
//        return cell
//    }

    // MARK: - Action View Header
    @IBAction func btnMenu(_ sender: UIButton) {
//        sideMenuDelegate?.openMenu()
        present(menu!, animated: true, completion: nil)
    }
    
    func createSideMenu()
    {
        menu = SideMenuNavigationController(rootViewController: SideBarMenu())
        menu?.leftSide = true
        
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
    }
    

}
