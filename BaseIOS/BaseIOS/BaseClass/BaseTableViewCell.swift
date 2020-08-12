//
//  BaseTableViewCell.swift
//  BaseIOS
//
//  Created by Nam Hoang Van on 8/13/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import Foundation
import UIKit

open class BaseTableViewCell: UITableViewCell {

     override open func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override open func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var indexPath : IndexPath!
    
    class func nib() -> UINib{
        return UINib(nibName:String(describing: self), bundle: Bundle.main)
    }
    class func nibName() -> String{
        return String(describing: self)
    }
    
    class func nibName(returnClassName: Bool) -> String{
        if returnClassName {
            return NSStringFromClass(self.self)
        }
        return String(describing: self)
    }
    
    class func height() -> CGFloat{
        return 50.0
    }
    
    class func height(withItem _item:AnyObject?) -> CGFloat{
        return 50.0
    }
    
    func configCellWithData(_ data: AnyObject?){}
}
