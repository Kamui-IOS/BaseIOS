//
//  DauDuoiLoto.swift
//  Loto
//
//  Created by Nam Hoang Van on 9/16/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import Foundation

class DauDuoiLoto {
    
    var loto: String?
    var dau: String?
    var duoi: String?
    
    init() {
    }
    
    func getData(data: String) {
        
        let h = data.index(data.endIndex, offsetBy: -2)
        let f = data.index(data.endIndex, offsetBy: -1)
        let k = data.index(data.endIndex, offsetBy: 0)
        let range = h..<k
        
        self.loto = String(data[range])
        self.dau = String(data[h])
        self.duoi = String(data[f])
    }
    
    
}
