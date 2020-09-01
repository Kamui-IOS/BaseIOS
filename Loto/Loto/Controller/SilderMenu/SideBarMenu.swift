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
        registerVC.modalPresentationStyle = .fullScreen
        present(registerVC, animated: true, completion: nil)
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
        soiCauVC.modalPresentationStyle = .fullScreen
        present(soiCauVC, animated: true, completion: nil)
    }
    
    @IBAction func SoMoDe(_ sender: Any) {
        let soMoDeVC = SoMoDeViewController()
        soMoDeVC.modalPresentationStyle = .fullScreen
        present(soMoDeVC, animated: true, completion: nil)
    }
    
    @IBAction func KetQuaDai(_ sender: Any) {
        let tabbar = TabbarKQDai()
        tabbar.modalPresentationStyle = .fullScreen
        present(tabbar, animated: true, completion: nil)
    }
    
    @IBAction func MoThuongHomNay(_ sender: Any) {
        let tabbar = TabbarMoThuongHomNay()
        tabbar.modalPresentationStyle = .fullScreen
        present(tabbar, animated: true, completion: nil)
    }
    
    @IBAction func TraCuuXoSo(_ sender: Any) {
    }
}
