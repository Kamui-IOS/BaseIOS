//
//  SXMB.swift
//  Loto
//
//  Created by Nam Hoang Van on 9/14/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import Foundation
import ObjectMapper

struct Jackport: Mappable {
    var type: JackportType?
    var cityName: String?
    var jackport: String?
    var first: String?
    var second: [String]?
    var third: [String]?
    var fourth: [String]?
    var fiveth: [String]?
    var sixth: [String]?
    var seventh: [String]?
    var eighth: String?
    
    init(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        type <- map["Type"]
        cityName <- map["CityName"]
        jackport <- map["Jackpot"]
        first <- map["First"]
        second <- map["Second"]
        third <- map["Third"]
        fourth <- map["Fourth"]
        fiveth <- map["Fiveth"]
        sixth <- map["Sixth"]
        seventh <- map["Seventh"]
        eighth <- map["Eighth"]
    }
}

enum JackportType: Int {
    case hanoi
    case dalat
    case kiengiang
    case tiengiang
}
