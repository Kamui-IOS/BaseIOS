//
//  CacheModule.swift
//  Lucky
//
//  Created by Thuy Truong Quang on 9/16/20.
//  Copyright © 2020 Thuy Truong Quang. All rights reserved.
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


class CacheModule {
    static let sharedInstance = CacheModule()
    
    var isShowZalo = true
    private var firebaseModel: FirebaseModel?
    var websiteURL = "This is Test version"
    
    func getFirebaseConfig() -> FirebaseModel? {
        return self.firebaseModel
    }
    
    func setFirebaseConfig(_ target: FirebaseModel) {
        self.firebaseModel = target
    }
    
}

extension NSNotification.Name {
    static let didRetrieveData = Notification.Name(rawValue: "didRetrieveData")
}
