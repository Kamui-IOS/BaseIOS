//
//  MienBacViewController.swift
//  Loto
//
//  Created by Nam Hoang Van on 8/30/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import UIKit

class MienBacViewController: BaseViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var date: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupCollection()
        setupNavi()
        getKQToday()
    }
    
    var dataToday: Jackport?
    
    func setupCollection() {
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(UINib(nibName: "MienBacCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
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
        self.date = DataServer.share.datemienbac ?? ""
        
            if self.date == "" {
                let date = Date.yesterday
                let dateformat = DateFormatter()
                dateformat.dateFormat = "YYYY-MM-dd"
                let dateString = dateformat.string(from: date)
                return dateString
            } else {
                DataServer.share.datemienbac = ""
                return self.date
            }
            
//        } else {
//            if self.date == "" {
//                let date = Date.yesterday
//                let dateformat = DateFormatter()
//                dateformat.dateFormat = "EEEE dd/MM/YYY"
//                let dateString = dateformat.string(from: date)
//                return dateString
//            }
//            else {
//                DataServer.share.date = ""
//                return self.date
//            }
    }
    
    func getKQToday() {
        
        APIManager.share.getXSMB(date: getDate(), completionHander: {(Jackport) in
            if let data = Jackport {
                for index in 0..<data.count {
                    if data[index].type == .hanoi {
                        self.dataToday = data[index]
                        self.collectionView.reloadData()
                    }
                }
            }
        })
    }
}

extension MienBacViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MienBacCollectionViewCell
        
        if let data = self.dataToday {
            cell.loadDataCells(date: getDate(),data: data)
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: CGFloat(self.view.bounds.size.width), height: CGFloat(897))
    }
}
