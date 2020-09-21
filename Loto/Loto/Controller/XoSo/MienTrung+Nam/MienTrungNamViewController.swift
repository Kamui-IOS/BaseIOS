//
//  MienTrungNamViewController.swift
//  Loto
//
//  Created by Nam Hoang Van on 8/30/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import UIKit

class MienTrungNamViewController: BaseViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var dataToday = [Jackport]()
    var isCheckCell = 0
    var date: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupCollection()
        setupNavi()
        getKQToday()
    }
    
    func setupCollection() {
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(UINib(nibName: "MienTrungNam3ItemCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        self.collectionView.register(UINib(nibName: "MienTrungNam4ItemCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cells")

    }
    
    func setupNavi() {
        if SideBarMenu.isCheckSideMenu == 2 {
            self.navigationItem.title = "Trực tiếp"
        } else {
            self.navigationItem.title = "Kết quả xổ số"
        }
    }
    
    func getDate() -> String
    {
        self.date = DataServer.share.datemiennam ?? ""
        if self.date == "" {
            let date = Date.yesterday
            let dateformat = DateFormatter()
            dateformat.dateFormat = "YYYY-MM-dd"
            let dateString = dateformat.string(from: date)
            return dateString
        } else {
            DataServer.share.datemiennam = ""
            return self.date
        }
        
    }
    
    func getKQToday() {
           
           APIManager.share.getXSMB(date: getDate(), completionHander: {(Jackport) in
               if let data = Jackport {
                   for index in 0..<data.count {
                    if data[index].type != .hanoi && data[index].type != nil {
                            self.dataToday.append(data[index])
                            self.isCheckCell = index + 1
                       }
                   }
                self.collectionView.reloadData()
               }
           })
       }
}

extension MienTrungNamViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if self.isCheckCell == 4 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cells", for: indexPath) as! MienTrungNam4ItemCollectionViewCell
            
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MienTrungNam3ItemCollectionViewCell
            if self.dataToday.count != 0 {
                cell.loadCell(date: getDate(), data: self.dataToday)
            }
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: CGFloat(self.view.bounds.size.width), height: CGFloat(1176))
    }
    
}
