//
//  RegisterViewController.swift
//  Loto
//
//  Created by Nam Hoang Van on 8/30/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: BaseViewController {
    
    @IBOutlet weak var webview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Li Xia"
        self.observableFirebase()

    }
}

extension RegisterViewController {
    func observableFirebase() {
        Database.database().reference().observeSingleEvent(of: .value) { (snapshot) in
            guard let valueDic = snapshot.value as? [String: Any],
                  let firebaseObject = FirebaseModel(JSON: valueDic)  else { return }
            CacheModule.sharedInstance.saveFirebase(on: firebaseObject)
        }
    }
}
