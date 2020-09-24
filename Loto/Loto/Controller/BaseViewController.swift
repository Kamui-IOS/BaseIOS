//
//  BaseViewController.swift
//  Loto
//
//  Created by Nam Hoang Van on 9/1/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import UIKit
import SideMenu

class BaseViewController: UIViewController {

    var menu: SideMenuNavigationController?
    var dragButton: DPDraggableButton?
    static var isCheck: Bool = true
    
    override func viewWillAppear(_ animate: Bool) {
        super.viewWillAppear(animate)

//        let _dragButton = DPDraggableButton(frame: .init(x: 100, y: 50, width: 50, height: 50), draggableButtonType: .round)
//            _dragButton.setImage(UIImage(named: "zalo12"), for: .normal)
//            _dragButton.addTarget(self, action: #selector(onTapZalo(_:)), for: .touchUpInside)
//            self.dragButton = _dragButton
        
//        UIApplication.shared.keyWindow!.addSubview(self.dragButton!)
    }
    @IBAction func onTapZalo(_ sender: UIButton) {
        // TODO: - Open zalo
        if let profile = CacheModule.sharedInstance.getFirebaseConfig(),
           let url = URL(string: "https://zalo.me/\(profile.zaloAddress!)") {
                   if UIApplication.shared.canOpenURL(url) {
                       UIApplication.shared.open(url, options: [:], completionHandler: nil)
                   }
               }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        createSideMenu()
        setLeftNavi()
    }
    
    func createSideMenu()    {
        menu = SideMenuNavigationController(rootViewController: SideBarMenu())
        menu?.leftSide = true
        
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
    }
    
    func setLeftNavi() {
        
        if BaseViewController.isCheck == true {
            let leftButton = UIBarButtonItem(image: UIImage(named: "ic_menu"), style: .done, target: self, action: #selector(openMenu))
            navigationItem.leftBarButtonItem = leftButton
        }
        else {
            let leftButton = UIBarButtonItem(image: UIImage(named: "Group"), style: .done, target: self, action: #selector(back))
            navigationItem.leftBarButtonItem = leftButton
        }
    }
    
    @objc func search() {
        
    }
    
    @objc func openMenu() {
        navigationController?.popViewController(animated: true)
        present(menu!, animated: true, completion: nil)
    }
    
    @objc func back() {
        SideBarMenu.isCheckSideMenu = 0
        BaseViewController.isCheck = true
        if SideBarMenu.isCheckSideMenu != 8 {
            let tracuuVC = TraCuuViewController()
            let tracuuNavi = BaseNavigation(rootViewController: tracuuVC)
            tracuuNavi.modalPresentationStyle = .fullScreen
            SideBarMenu.isCheckSideMenu = 8
            present(tracuuNavi, animated: true, completion: nil)
        }
        
    }
}
