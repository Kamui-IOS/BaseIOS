//
//  BaseHeaderTableView.swift
//  BaseIOS
//
//  Created by Nam Hoang Van on 8/13/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import Foundation
import UIKit

class BaseHeaderTableView: UITableViewHeaderFooterView {
    
    class func height() -> CGFloat {
        return 50.0
    }
    
    class func heightWithItem(_ data: AnyObject) -> CGFloat {
        return 50.0
    }
    
    class func nib() -> UINib {
        return UINib(nibName:String(describing: self), bundle: Bundle.main)
    }
    class func nibName() -> String {
        return String(describing: self)
    }
    
    func configHeaderWithData(_ data: AnyObject?) {}
    
}
