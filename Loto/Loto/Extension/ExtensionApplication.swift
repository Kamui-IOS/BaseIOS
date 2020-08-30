//
//  ExtensionApplication.swift
//  Loto
//
//  Created by Nam Hoang Van on 8/30/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import Foundation
import UIKit

extension UIApplication {
    func topMostViewController() -> UIViewController? {
        let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
        return keyWindow?.rootViewController
    }
}
