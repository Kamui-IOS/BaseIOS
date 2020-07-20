//
//  Current.swift
//  BaseIOS
//
//  Created by Nam Hoang Van on 7/20/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import Foundation
import ObjectMapper

class Current: Mappable {
    
    var temperature: Int?
    var weather_descriptions = [String]()
    var weather_icons = [String]()
    var uv_index: Int?
    var pressure: Int?
    var feelslike: Int?
    var humidity: Int?
    var visibility: Int?
    var wind_speed: Int?
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        temperature <- (map["temperature"])
        weather_descriptions <- (map["weather_descriptions"])
        weather_icons <- (map["weather_icons"])
        uv_index <- (map["uv_index"])
        pressure <- (map["pressure"])
        feelslike <- (map["feelslike"])
        humidity <- (map["humidity"])
        visibility <- (map["visibility"])
        wind_speed <- (map["wind_speed"])
    }
    
}
