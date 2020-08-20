//
//  TabbarViewController.swift
//  BaseIOS
//
//  Created by Nam Hoang Van on 8/20/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import UIKit

class TabbarViewController: UITabBarController, UITabBarControllerDelegate {
    var mainVC = HomeViewController()
    var settingVC = SettingViewController()
    
    let titles = ["Home","Setting"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
    }
    
    func setTabbar() {
        let mainNavi = UINavigationController(rootViewController: mainVC)
        let settingNavi = UINavigationController(rootViewController: settingVC)
        
        let tabbarController = UITabBarController()
        tabbarController.viewControllers = [mainNavi, settingNavi]
        
        mainVC.tabBarItem = UITabBarItem(title: "Home", image: nil, selectedImage: nil)
        settingVC.tabBarItem = UITabBarItem(title: "Setting", image: nil, selectedImage: nil)
        viewControllers = [mainVC, settingVC]
    }
}
