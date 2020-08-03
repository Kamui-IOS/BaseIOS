//
//  BaseModel.swift
//  BaseIOS
//
//  Created by Nam Hoang Van on 8/3/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import Foundation
import ObjectMapper

class BaseModel: Mappable {
    
    var total: Int = 0
    var limit: Int = 0
    var skip: Int = 0
    var data: NhanVien?
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        total <- (map["total"])
        data <- (map["data"])
    }
}
