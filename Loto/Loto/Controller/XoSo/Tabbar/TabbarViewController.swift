//
//  TabbarViewController.swift
//  Loto
//
//  Created by Nam Hoang Van on 8/31/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import Foundation
import UIKit

class TabbarViewController: UITabBarController, UITabBarControllerDelegate
{
    var mienBac = MienBacViewController()
    var mienTrung = MienTrungNamViewController()
    var mienNam = MienTrungNamViewController()
    
    let titles = ["Miền Bắc","Miền Trung","Miền Nam"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.setTabbar()
    }
    
    func setTabbar()
    {
        let mienBacNavi = BaseNavigation(rootViewController: mienBac)
        let mienTrungNavi = BaseNavigation(rootViewController: mienTrung)
        let mienNamNavi = BaseNavigation(rootViewController: mienNam)
        
        mienBacNavi.tabBarItem = UITabBarItem(title: "Miền Bắc", image: nil, selectedImage: nil)
        mienTrungNavi.tabBarItem = UITabBarItem(title: "Miền Trung", image: nil, selectedImage: nil)
        mienNamNavi.tabBarItem = UITabBarItem(title: "Miền Nam", image: nil, selectedImage: nil)
        
        viewControllers = [mienBacNavi, mienTrungNavi, mienNamNavi]
    }
}
