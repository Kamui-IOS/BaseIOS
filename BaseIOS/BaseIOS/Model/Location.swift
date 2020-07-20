//
//  Location.swift
//  BaseIOS
//
//  Created by Nam Hoang Van on 7/20/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import Foundation
import ObjectMapper

class Location: Mappable {
    var name: String?
 
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        name <- (map["name"])
    }
}
