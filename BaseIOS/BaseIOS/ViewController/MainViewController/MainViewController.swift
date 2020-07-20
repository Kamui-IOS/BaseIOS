//
//  MainViewController.swift
//  BaseIOS
//
//  Created by Hoàng Nam on 7/20/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import UIKit

class MainViewController: BaseViewController {

    var weather: ModelWeather?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnClick(_ sender: UIButton) {
        APIManager.share.weather(completionHander: {(status, ModelWeather) in
            self.weather = ModelWeather
            print((self.weather?.location?.name!)!)
        })
    }
    

}
