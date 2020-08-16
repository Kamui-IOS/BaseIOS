//
//  NhanVien.swift
//  BaseIOS
//
//  Created by Nam Hoang Van on 8/3/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import Foundation
import ObjectMapper

class NhanVien: Mappable {
    
    var id:Int!
    var name: String = ""
    var age: Int = 0
    
    init() {
        
    }
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        id <- (map["id"])
        name <- (map["name"])
        age <- (map["age"])
    }
    
    
}
