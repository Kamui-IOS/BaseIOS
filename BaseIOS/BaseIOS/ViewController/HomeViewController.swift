//
//  HomeViewController.swift
//  BaseIOS
//
//  Created by Nam Hoang Van on 8/13/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet private weak var viewHeader: UIView!
    @IBOutlet private weak var tbView: UITableView!
    
    
    var data: [NhanVien] = []
    var nhanvien: NhanVien?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tbView.dataSource = self
        self.tbView.delegate = self
        self.tbView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "cells")
        let view = UIView()
        tbView.tableFooterView = view
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.getUser()
    }
    
    func getUser() {
        APIManager.share.getUser(completionHander: {(status, BaseModel) in
            if let data = BaseModel.data {
                self.data = data
                self.tbView.reloadData()
                print(self.data.count)
            }
        })
    }
    

    @IBAction func btnClickRight(_ sender: Any) {
    }
    @IBAction func btnClickLeft(_ sender: Any) {
        let detailVC = DetailViewController()
        detailVC.modalPresentationStyle = .fullScreen
        self.present(detailVC, animated: true, completion: nil)
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = self.data[indexPath.row]
        let cell = tbView.dequeueReusableCell(withIdentifier: "cells", for: indexPath) as! HomeTableViewCell
        cell.loadDataCells(data: data)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailViewController()
        detailVC.modalPresentationStyle = .fullScreen
        detailVC.data = self.data[indexPath.row]
        detailVC.indexData = self.data[indexPath.row].id
        self.present(detailVC, animated: true, completion: nil)    }
}

