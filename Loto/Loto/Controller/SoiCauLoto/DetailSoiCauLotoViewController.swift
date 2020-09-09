//
//  DetailSoiCauLotoViewController.swift
//  Loto
//
//  Created by Nam Hoang Van on 8/31/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import UIKit

class DetailSoiCauLotoViewController: UIViewController {

    
    @IBOutlet weak var lotobachthu: UILabel!
    @IBOutlet weak var thamkhaoloto: UILabel!
    @IBOutlet weak var cauamduong: UILabel!
    @IBOutlet weak var amduong: UILabel!
    
    var nameTitle = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = nameTitle
    }
}
