//
//  NavigationBaseView.swift
//  BaseIOS
//
//  Created by Nam Hoang Van on 8/3/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import Foundation
import UIKit

class NavigationBaseView {
    
    @IBOutlet weak var uiTitle: UILabel!
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnRight: UIButton!
    
    
}

protocol NavigationBaseDelegate {
    optional func viewNavigation(viewNavigation: NavigationBaseView, didClickButton:sender)
}
