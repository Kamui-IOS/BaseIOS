//
//  HomeViewController.swift
//  BaseIOS
//
//  Created by Nam Hoang Van on 8/13/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    @IBOutlet private weak var tbView: UITableView!
//    @IBOutlet private weak var padingTop: NSLayoutConstraint!
    
//    var controller: HomeController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        initNaviBarSearchButton(onView: self, withTitle: self.nibName)
//        controller = HomeController(initWithTargetTable: tableView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        paddingTop.constant = MyAppLication.navigationBarHeight
    }

}

extension HomeViewController: NavigationHandle {
    
}

