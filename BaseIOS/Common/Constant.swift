//
//  Constant.swift
//  BaseIOS
//
//  Created by Nam Hoang Van on 8/13/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import Foundation
import UIKit

let APPDELEGATE = UIApplication.shared.delegate

enum MyAppLication {
    static let applicationName = "Books"
    static let version = (Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") ?? "0") as! String
    static let defaultNewVersionIntroduction = "The new version is faster and more reliable then ever. Go to the App Store to get the update and find out what's new."
    static let navigationBarHeight:CGFloat = DeviceManager.DeviceType.IS_IPHONE_X ? 80 : 60
    
    static let PopOverContentViewSize = CGSize(width: (min(DeviceManager.getWinSize().width, DeviceManager.getWinSize().height) - 35) * 4 / 5 + 40, height: min(DeviceManager.getWinSize().width, DeviceManager.getWinSize().height) - 150)
}
