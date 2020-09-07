//
//  SideBarMenu.swift
//  Loto
//
//  Created by Nam Hoang Van on 9/1/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import UIKit

class SideBarMenu: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func DangKy(_ sender: UIButton) {
        let registerVC = RegisterViewController()
        let registerNavi = BaseNavigation(rootViewController: registerVC)
        registerNavi.modalPresentationStyle = .fullScreen
        present(registerNavi, animated: true, completion: nil)
    }
    
    @IBAction func TrucTiepXoSo(_ sender: UIButton) {
        let tabbar = TabbarViewController()
        tabbar.modalPresentationStyle = .fullScreen
        present(tabbar, animated: true, completion: nil)
    }
    @IBAction func KetQuaXoSo(_ sender: Any) {
        let tabbar = TabbarViewController()
        tabbar.modalPresentationStyle = .fullScreen
        present(tabbar, animated: true, completion: nil)
    }
    
    @IBAction func SoiCauLOTO188(_ sender: Any) {
        let soiCauVC = SoiCauLOTOViewController()
        let soiCauNavi = BaseNavigation(rootViewController: soiCauVC)
        soiCauVC.index = 100
        soiCauNavi.modalPresentationStyle = .fullScreen
        present(soiCauNavi, animated: true, completion: nil)
    }
    
    @IBAction func SoMoDe(_ sender: Any) {
        let soMoDeVC = SoMoDeViewController()
        soMoDeVC.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(soMoDeVC, animated: true)
    }
    
    @IBAction func KetQuaDai(_ sender: Any) {
        let tabbar = TabbarKQDai()
        TabbarKQDai.status = false
        tabbar.modalPresentationStyle = .fullScreen
        present(tabbar, animated: true, completion: nil)
    }
    
    @IBAction func MoThuongHomNay(_ sender: Any) {
        let tabbar = TabbarKQDai()
        TabbarKQDai.status = true
        tabbar.modalPresentationStyle = .fullScreen
        present(tabbar, animated: true, completion: nil)
    }
    
    @IBAction func TraCuuXoSo(_ sender: Any) {
        let tracuuVC = TraCuuViewController()
        tracuuVC.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(tracuuVC, animated: false)
    }
}
