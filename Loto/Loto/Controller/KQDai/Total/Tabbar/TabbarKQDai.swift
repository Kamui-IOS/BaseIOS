//
//  TabbarKQDai.swift
//  Loto
//
//  Created by Nam Hoang Van on 9/1/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import Foundation
import UIKit

class TabbarKQDai: UITabBarController, UITabBarControllerDelegate
{
    var mienTrung = TotalViewController()
    var mienNam = TotalViewController()
    
    let titles = ["Miền Trung","Miền Nam"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.setTabbar()
    }
    
    func setTabbar()
    {
        let mienTrungNavi = UINavigationController(rootViewController: mienTrung)
        let mienNamNavi = UINavigationController(rootViewController: mienNam)
        
        let tabbarController = UITabBarController()
        tabbarController.viewControllers = [mienTrungNavi, mienNamNavi]
    
        mienTrung.tabBarItem = UITabBarItem(title: "Miền Trung", image: nil, selectedImage: nil)
        mienNam.tabBarItem = UITabBarItem(title: "Miền Nam", image: nil, selectedImage: nil)
        
        viewControllers = [mienTrung, mienNam]
    }
}
