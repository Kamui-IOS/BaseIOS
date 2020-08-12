//
//  NavigationBarView.swift
//  BaseIOS
//
//  Created by Nam Hoang Van on 8/13/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import UIKit

@objc protocol NavigationHandle {
    @objc optional func navigationBarView(_ navigationView: NavigationBarView, clickLeftMenu sender: AnyObject)
    @objc optional func navigationBarView(_ navigationView: NavigationBarView, clickRightMenu sender: AnyObject)
    @objc optional func navigationBarView(_ navigationView: NavigationBarView, clickOtherMenu sender: AnyObject)
    @objc optional func navigationBarView(_ navigationView: NavigationBarView, clickDropdown sender: AnyObject)
    @objc optional func navigationBarView(_ navigationView: NavigationBarView, clickSearch sender: AnyObject)
    @objc optional func navigationBarView(_ navigationView: NavigationBarView, searchWithText keyword: String?)
    @objc optional func navigationBarView(_ navigationView: NavigationBarView, clickDelete sender: AnyObject)
    @objc optional func navigationBarView(_ navigationView: NavigationBarView, clickDeleteAll sender: AnyObject)
}

public enum NavigationType:Int {
    case main
}

class NavigationBarView: UIView {

    @IBOutlet private weak var leftBtn: UIButton!
    @IBOutlet private weak var rightBtn: UIButton!
    @IBOutlet private weak var lbTitle: UILabel!
    
    var delegate : NavigationHandle?

    class func instanceFromNib(_ frame: CGRect) -> NavigationBarView {
        let myNavigationBar = UINib(nibName: "NavigationBarView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! NavigationBarView
        myNavigationBar.frame = frame
        return myNavigationBar
    }
    
    func updateTitle(_ title:String?) {
        if let _title = title {
            lbTitle?.text = _title
        }
    }
    
    
    var navigationBarType: NavigationType = .main {
        didSet{
            switch navigationBarType {
            case .main:
                lbTitle?.isHidden = false
                break
                
            default:
                lbTitle?.isHidden = true
                break
            }
        }
    }
    
    @IBAction func clickLeftButton(_ sender: AnyObject) {
        if (delegate?.navigationBarView(_:clickLeftMenu:)) != nil {
            delegate?.navigationBarView?(self, clickLeftMenu: sender)
        }
    }
    
    @IBAction func rightButtonClick(_ sender: AnyObject) {
        if delegate?.navigationBarView(_:clickRightMenu:) != nil {
            let btn = sender as! UIButton
            btn.isSelected = !btn.isSelected
            delegate?.navigationBarView!(self, clickRightMenu: sender)
        }
    }
}
