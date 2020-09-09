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
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    @IBAction func SoiCauLOTO188(_ sender: Any) {
        if SideBarMenu.isCheckSideMenu != 4 {
            let soiCauVC = SoiCauLOTOViewController()
            let soiCauNavi = BaseNavigation(rootViewController: soiCauVC)
            soiCauVC.index = 100
            soiCauNavi.modalPresentationStyle = .fullScreen
            SideBarMenu.isCheckSideMenu = 4
            present(soiCauNavi, animated: true, completion: nil)
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
    
    @IBAction func KetQuaDai(_ sender: Any) {
        if SideBarMenu.isCheckSideMenu != 6 {
            let tabbar = TabbarKQDai()
            TabbarKQDai.status = false
            tabbar.modalPresentationStyle = .fullScreen
            SideBarMenu.isCheckSideMenu = 6
            present(tabbar, animated: true, completion: nil)
        }
    }
    
    @IBAction func MoThuongHomNay(_ sender: Any) {
        if SideBarMenu.isCheckSideMenu != 7 {
            let tabbar = TabbarKQDai()
            TabbarKQDai.status = true
            tabbar.modalPresentationStyle = .fullScreen
            SideBarMenu.isCheckSideMenu = 7
            present(tabbar, animated: true, completion: nil)
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
