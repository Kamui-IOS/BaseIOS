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
    
    static var status: Bool = true
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.setTabbar()
    }
    
    func setTabbar()
    {
        let leftNavi = BaseNavigation(rootViewController: mienTrung)
        let rightNavi = BaseNavigation(rootViewController: mienNam)
        
        if TabbarKQDai.status {
            leftNavi.tabBarItem = UITabBarItem(title: "Miền Trung", image: UIImage(named: "icons8-squared-menu-35"), selectedImage: nil)
            rightNavi.tabBarItem = UITabBarItem(title: "Miền Nam", image: UIImage(named: "icons8-squared-menu-35"), selectedImage: nil)
        }else {
            leftNavi.tabBarItem = UITabBarItem(title: "Today", image: UIImage(named: "icons8-squared-menu-35"), selectedImage: nil)
            rightNavi.tabBarItem = UITabBarItem(title: "Yesterday", image: UIImage(named: "icons8-squared-menu-35"), selectedImage: nil)
        }
        
        viewControllers = [leftNavi, rightNavi]
    }
}
