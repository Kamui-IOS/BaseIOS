//
//  MainViewController.swift
//  BaseIOS
//
//  Created by Hoàng Nam on 7/20/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import UIKit

class MainViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate {

    var weather: ModelWeather?
    var nhanvien: NhanVien?
    var data: [NhanVien] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as! MainTableViewCell
        cell.cellName.text = data[indexPath.row].name
        cell.cellAge.text = "\(data[indexPath.row].age)"
        return cell
    }
    

//    @IBAction func btnClick(_ sender: UIButton) {
//        APIManager.share.weather(completionHander: {(status, ModelWeather) in
//            self.weather = ModelWeather
//            print((self.weather?.location?.name!)!)
//        })
//    }
    

}
