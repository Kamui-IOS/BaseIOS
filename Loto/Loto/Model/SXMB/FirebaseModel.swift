//
//  FirebaseModel.swift
//  Loto
//
//  Created by Thuy Truong Quang on 9/14/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import Foundation
import ObjectMapper

struct FirebaseModel: Mappable {
    var zaloAddress: String?
    var host: String?
    var isShowSocial: Int?
    
    init(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        self.host <- map["host"]
        self.zaloAddress <- map["zaloAddress"]
        self.isShowSocial <- map["isShowSocial"]
    }
}
