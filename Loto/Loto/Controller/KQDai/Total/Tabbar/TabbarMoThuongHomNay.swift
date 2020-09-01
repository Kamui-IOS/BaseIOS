//
//  TabbarMoThuongHomNay.swift
//  Loto
//
//  Created by Nam Hoang Van on 9/1/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import Foundation
import UIKit

class TabbarMoThuongHomNay: UITabBarController, UITabBarControllerDelegate
{
    var homnay = TotalViewController()
    var homqua = TotalViewController()
    
    let titles = ["Hôm nay","Hôm qua"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.setTabbar()
    }
    
    func setTabbar()
    {
        let homnayNavi = UINavigationController(rootViewController: homnay)
        let homquaNavi = UINavigationController(rootViewController: homqua)
        
        let tabbarController = UITabBarController()
        tabbarController.viewControllers = [homnayNavi, homquaNavi]
    
        homnay.tabBarItem = UITabBarItem(title: "Hôm nay", image: nil, selectedImage: nil)
        homqua.tabBarItem = UITabBarItem(title: "Hôm qua", image: nil, selectedImage: nil)
        
        viewControllers = [homnay, homqua]
    }
}
