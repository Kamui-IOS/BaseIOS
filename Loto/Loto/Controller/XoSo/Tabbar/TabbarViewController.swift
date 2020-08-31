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
        let mienBacNavi = UINavigationController(rootViewController: mienBac)
        let mienTrungNavi = UINavigationController(rootViewController: mienTrung)
        let mienNamNavi = UINavigationController(rootViewController: mienNam)
        
        let tabbarController = UITabBarController()
        tabbarController.viewControllers = [mienBacNavi, mienTrungNavi, mienNamNavi]
     
        mienBac.tabBarItem = UITabBarItem(title: "Miền Bắc", image: nil, selectedImage: nil)
        mienTrung.tabBarItem = UITabBarItem(title: "Miền Trung", image: nil, selectedImage: nil)
        mienNam.tabBarItem = UITabBarItem(title: "Miền Nam", image: nil, selectedImage: nil)
        
        viewControllers = [mienBac, mienTrung, mienNam]
    }
}
