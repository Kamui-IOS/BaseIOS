//
//  Forecast.swift
//  BaseIOS
//
//  Created by Nam Hoang Van on 7/20/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import Foundation
import ObjectMapper

class Forecast: Mappable {
    var name: WeatherDay?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        name <- (map["name"])
    }
    
}

class WeatherDay: Mappable{
    var mintemp: Int?
    var maxtemp: Int?
    var astro: Astro?
    
     required init?(map: Map) {}
     
     func mapping(map: Map) {
        mintemp <- (map["mintemp"])
        maxtemp <- (map["maxtemp"])
        astro <- (map["astro"])
     }
}

class Astro: Mappable {
    var sunrise: String?
    var sunset: String?
    
     required init?(map: Map) {}
     
     func mapping(map: Map) {
        sunrise <- (map["sunrise"])
        sunset <- (map["sunset"])
     }
}
