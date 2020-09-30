//
//  SideBarMenu.swift
//  Loto
//
//  Created by Nam Hoang Van on 9/1/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import UIKit

class SideBarMenu: UIViewController {
    
    static var isCheckSideMenu: Int = 1
    
    @IBOutlet weak var registerLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(onReloadWebView), name: .didRetrieveData, object: nil)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onReloadWebView() {
        registerLabel.text = "Đăng ký"
    }
    
    @IBAction func DangKy(_ sender: UIButton) {
        
        if SideBarMenu.isCheckSideMenu != 1 {
            let registerVC = RegisterViewController()
            let registerNavi = BaseNavigation(rootViewController: registerVC)
            registerNavi.modalPresentationStyle = .fullScreen
            SideBarMenu.isCheckSideMenu = 1
            present(registerNavi, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func TrucTiepXoSo(_ sender: UIButton) {
        if SideBarMenu.isCheckSideMenu != 2 {
            let tabbar = TabbarViewController()
            tabbar.modalPresentationStyle = .fullScreen
            present(tabbar, animated: true, completion: nil)
            SideBarMenu.isCheckSideMenu = 2
        }
    }
    @IBAction func KetQuaXoSo(_ sender: Any) {
        if SideBarMenu.isCheckSideMenu != 3 {
            let tabbar = TabbarViewController()
            tabbar.modalPresentationStyle = .fullScreen
            present(tabbar, animated: true, completion: nil)
            SideBarMenu.isCheckSideMenu = 3
        }
    }
    
    @IBAction func SoMoDe(_ sender: Any) {
        if SideBarMenu.isCheckSideMenu != 5 {
            let soMoDeVC = SoMoDeViewController()
            let soMoDeNavi = BaseNavigation(rootViewController: soMoDeVC)
            soMoDeNavi.modalPresentationStyle = .fullScreen
            SideBarMenu.isCheckSideMenu = 5
            present(soMoDeNavi, animated: true, completion: nil)
        }
    }
    
    @IBAction func TraCuuXoSo(_ sender: Any) {
        if SideBarMenu.isCheckSideMenu != 8 {
            let tracuuVC = TraCuuViewController()
            let tracuuNavi = BaseNavigation(rootViewController: tracuuVC)
            tracuuNavi.modalPresentationStyle = .fullScreen
            SideBarMenu.isCheckSideMenu = 8
            present(tracuuNavi, animated: true, completion: nil)
        }
    }
}
