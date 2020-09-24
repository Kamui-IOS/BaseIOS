//
//  BaseNavigation.swift
//  Loto
//
//  Created by Nam Hoang Van on 9/1/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import Foundation
import UIKit

class BaseNavigation: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.backgroundColor = .white
        
        if #available(iOS 13.0, *) {
            let statusbarView = UIView()
            statusbarView.backgroundColor = .white
            view.addSubview(statusbarView)
        } else {
            let statusbar = UIApplication.shared.value(forKey: "statusBar") as! UIView
            statusbar.backgroundColor = .white
            view.addSubview(statusbar)
        }
    }
}
