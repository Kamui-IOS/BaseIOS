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
        self.setTabbar()
        
    }
    
    func setTabbar() {
        let mainNavi = UINavigationController(rootViewController: mainVC)
        let settingNavi = UINavigationController(rootViewController: settingVC)
        
        let tabbarController = UITabBarController()
        tabbarController.viewControllers = [mainNavi, settingNavi]
        
        mainVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "ic_home_active"), selectedImage: UIImage(named: "ic_home_not_active"))
        settingVC.tabBarItem = UITabBarItem(title: "Setting", image: UIImage(named: "ic_setting_active"), selectedImage: UIImage(named: "ic_setting_not_active"))
        viewControllers = [mainVC, settingVC]
    }
}
