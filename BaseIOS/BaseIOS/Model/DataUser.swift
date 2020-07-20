//
//  DataUser.swift
//  BaseIOS
//
//  Created by Nam Hoang Van on 7/20/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import Foundation
import ObjectMapper

class ModelWeather: Mappable {
    
    var location: Location?
    var current: Current?
    var forecast: Forecast?
    
    init() {
        
    }
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        location <- (map["location"])
        current <- (map["current"])
        forecast <- (map["forecast"])
    }
}
