//
//  DetailViewController.swift
//  BaseIOS
//
//  Created by Nam Hoang Van on 8/16/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldAge: UITextField!
    
    var data: NhanVien?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setInfo()
    }
    
    func setInfo() {
        self.textFieldName.text = self.data?.name
        self.textFieldName.text = "\(self.data?.age)"
    }

    @IBAction func btnClickRight(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func btnClickLeft(_ sender: Any) {
    }
}
