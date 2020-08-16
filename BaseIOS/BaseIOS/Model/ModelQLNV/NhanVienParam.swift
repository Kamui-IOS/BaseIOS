//
//  NhanVienParam.swift
//  BaseIOS
//
//  Created by Nam Hoang Van on 8/17/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import Foundation
import UIKit
import ObjectMapper

class NhanVienParam {
    var name: String?
    var age: Int?

    
    init(name: String?, age: Int?) {
        self.name = name
        self.age = age
    }
    
    func toDictionary() -> [String: Any] {
        return [
            "name": name == nil ? "" : name!,
            "age": age == nil ? "" : age!
        ]
    }
    
    func toString() -> String {
        let invalidJson = "Not a valid JSON"
        do {
            let jsonData = try JSONSerialization.data(withJSONObject:self.toDictionary(), options: [])
            return String(bytes: jsonData, encoding: String.Encoding.utf8) ?? invalidJson
        } catch {
            return invalidJson
        }
    }
}
