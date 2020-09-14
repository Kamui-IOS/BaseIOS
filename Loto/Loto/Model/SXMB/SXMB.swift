//
//  SXMB.swift
//  Loto
//
//  Created by Nam Hoang Van on 9/14/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import Foundation
import ObjectMapper

//class SXMB: Mappable {
//    
//    var id:String!
//    var date: String = ""
//    var jackpot: String = ""
//    var first: String = ""
//    
//    var second_01: String = ""
//    var second_02: String = ""
//    
//    var third_01: String = ""
//    var third_02: String = ""
//    var third_03: String = ""
//    var third_04: String = ""
//    var third_05: String = ""
//    var third_06: String = ""
//    
//    var fourth_01: String = ""
//    var fourth_02: String = ""
//    var fourth_03: String = ""
//    var fourth_04: String = ""
//    
//    var fiveth_01: String = ""
//    var fiveth_02: String = ""
//    var fiveth_03: String = ""
//    var fiveth_04: String = ""
//    var fiveth_05: String = ""
//    var fiveth_06: String = ""
//    
//    var sixth_01: String = ""
//    var sixth_02: String = ""
//    var sixth_03: String = ""
//    
//    var seventh_01: String = ""
//    var seventh_02: String = ""
//    var seventh_03: String = ""
//    var seventh_04: String = ""
//    
//    
//    init() {
//    }
//    
//    required init?(map: Map) {
//    }
//    
//    var second: [String] = [""]
//    var third: [String] = [""]
//    var fourth: [String] = [""]
//    var fiveth: [String] = [""]
//    var sixth: [String] = [""]
//    var seventh: [String] = [""]
//    
//    func mapping(map: Map) {
//        id <- (map["id"])
//        date <- (map["date"])
//        jackpot <- (map["jackpot"])
//        first <- (map["first"])
//        
//        self.second <- (map["second"])
//        second_01 = self.second[0]
//        second_02 = self.second[1]
//        
//        self.third <- (map["third"])
//        self.third_01 = self.third[0]
//        self.third_02 = self.third[1]
//        self.third_03 = self.third[2]
//        self.third_04 = self.third[3]
//        self.third_05 = self.third[4]
//        self.third_06 = self.third[5]
//        
//        self.fourth <- (map["fourth"])
//        self.fourth_01 = self.fourth[0]
//        self.fourth_02 = self.fourth[1]
//        self.fourth_03 = self.fourth[2]
//        self.fourth_04 = self.fourth[3]
//        
//        self.fiveth <- (map["fiveth"])
//        self.fiveth_01 = self.fiveth[0]
//        self.fiveth_02 = self.fiveth[1]
//        self.fiveth_03 = self.fiveth[2]
//        self.fiveth_04 = self.fiveth[3]
//        self.fiveth_05 = self.fiveth[4]
//        self.fiveth_06 = self.fiveth[5]
//        
//        self.sixth <- (map["sixth"])
//        self.sixth_01 = self.sixth[0]
//        self.sixth_02 = self.sixth[1]
//        self.sixth_03 = self.sixth[2]
//        
//        self.seventh <- (map["seventh"])
//        self.seventh_01 = self.seventh[0]
//        self.seventh_02 = self.seventh[1]
//        self.seventh_03 = self.seventh[2]
//        self.seventh_04 = self.seventh[3]
//    }
//    
//    
//}

struct WelcomeElement {
    var type: Int?
    var cityName, jackpot, first: String?
    var second: Second?
    var third, fourth: [String]?
    var fiveth: Fiveth?
    var sixth: [String]?
    var seventh: Seventh?
    var eighth, result: String?
}

// Fiveth.swift

enum Fiveth {
    case string(String)
    case stringArray([String])
}

enum Second {
    case string(String)
    case stringArray([String])
}

enum Seventh {
    case string(String)
    case stringArray([String])
}
