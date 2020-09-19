//
//  ExtensionSequence.swift
//  Loto
//
//  Created by Nam Hoang Van on 9/19/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import Foundation
import UIKit

extension Sequence where Element: Hashable {
    var frequency: [Element: Int] { reduce(into: [:]) { $0[$1, default: 0] += 1 } }
    func removingDuplicatesAndGetNumberValue() -> [Element] {
        var addedDict = [Element: Bool]()
        
        return filter {
            addedDict.updateValue(true, forKey: $0) == nil
        }
    }
}
