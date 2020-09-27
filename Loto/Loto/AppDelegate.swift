//
//  AppDelegate.swift
//  Loto
//
//  Created by Nam Hoang Van on 8/30/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    static var shared: AppDelegate {
        get {
            return UIApplication.shared.delegate as! AppDelegate
        }
    }
    
    var topMost: UIViewController {
        get {
            var topController = UIApplication.shared.topMostViewController()
            
            while let presentedController = topController?.presentedViewController {
                topController = presentedController
            }
            
            return topController!
        }
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame:UIScreen.main.bounds)
        
        FirebaseApp.configure()
        configuration()
        openMainView()
        return true
    }
    
    private func configuration() {
        Database.database().reference().observeSingleEvent(of: .value) { (snapshot) in
            guard let responseDic = snapshot.value as? [String: Any],
                let firebaseModel = FirebaseModel(JSON: responseDic) else { return }
            CacheModule.sharedInstance.setFirebaseConfig(firebaseModel)
            NotificationCenter.default.post(name: .didRetrieveData, object: nil, userInfo: nil)
        }
    }
    
    func openMainView() {
            let registerVC = RegisterViewController()
            let naviVC = BaseNavigation(rootViewController: registerVC)
            self.window?.rootViewController = naviVC
            self.window?.makeKeyAndVisible()
        }
}

