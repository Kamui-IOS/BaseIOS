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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        createSideMenu()
    }
    
    func createSideMenu()    {
        menu = SideMenuNavigationController(rootViewController: SideBarMenu())
        menu?.leftSide = true
        
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
    }
    
    func openMenu() {
        present(menu!, animated: true, completion: nil)
    }
    
    func backViewController() {
        dismiss(animated: true, completion: nil)
    }

}
