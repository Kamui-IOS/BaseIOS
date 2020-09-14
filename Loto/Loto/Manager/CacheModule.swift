//
//  CacheModule.swift
//  Loto
//
//  Created by Thuy Truong Quang on 9/14/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import Foundation

class CacheModule {
    static let sharedInstance = CacheModule()
    
    private init() { }
    
    private var firebaseModel: FirebaseModel?
    
    func saveFirebase(on target: FirebaseModel) {
        self.firebaseModel = target
    }
    
    func getFirebase() -> FirebaseModel? {
        return firebaseModel
    }
}

