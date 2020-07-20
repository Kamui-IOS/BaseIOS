//
//  ExtensionApplication.swift
//  BaseIOS
//
//  Created by Nam Hoang Van on 7/20/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import Foundation
import UIKit

extension UIApplication {
    func topMostViewController() -> UIViewController? {
        let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
        return keyWindow?.rootViewController
    }
}
