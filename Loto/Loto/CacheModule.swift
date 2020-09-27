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
    var websiteURL = "<h1 style=\"text-align: center;\"><span style=\"text-decoration: underline;\"><strong>Đ&acirc;y l&agrave; phi&ecirc;n bản thử nghiệm.</strong></span></h1><p>K&ecirc;nh th&ocirc;ng tin xổ số uy t&iacute;n h&agrave;ng đầu, cập nhật kết quả, tra cứu nhanh ch&oacute;ng Bắc Nam, đi k&egrave;m với những tr&ograve; chơi giải tr&iacute; thư gi&atilde;n.</p><p>- Trực tiếp xổ số</p><p>- Kết quả xổ số</p><p>- Số may mắn.</p><p>- Tra cứu xổ số.</p>"
    
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
