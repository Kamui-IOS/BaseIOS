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
    var indexData: Int?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setInfo()
    }
    
    func setInfo() {
        self.textFieldName.text = self.data?.name
        self.textFieldAge.text = "\(self.data?.age ?? 0)"
    }

    @IBAction func btnClickRight(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func btnClickLeft(_ sender: Any) {
        
        guard let name = textFieldName.text else {return}
        guard let age = textFieldAge.text else {return}
        
        let param = NhanVienParam(name: name, age: Int(age))
        
        if let index = self.indexData {
            APIManager.share.updateUser(id: index, paramJSON: param) { (status, NhanVien) in
                print(status)
            }
        } else {
            APIManager.share.addUser(paramJSON: param, completionHander: {(status, BaseModel) in
                print(status)
            })
        }
        self.dismiss(animated: true, completion: nil)
        
        
    }
}
