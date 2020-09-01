//
//  SoiCauLOTOViewController.swift
//  Loto
//
//  Created by Nam Hoang Van on 8/31/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import UIKit

class SoiCauLOTOViewController: BaseViewController {

    @IBOutlet var footView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    var data = ["Ha Noi","Ho Chi Minh"]
    var index: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupTableView()
        self.navigationController?.navigationBar.isHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("\(index)")
    }
    
    func setupTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "SoiCauLOTOTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        self.tableView.tableFooterView = footView
    }
}

extension SoiCauLOTOViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SoiCauLOTOTableViewCell
        cell.cityName.text = data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        let soiCauDetailVC = DetailSoiCauLotoViewController()
        soiCauDetailVC.nameTitle = data[indexPath.row]
        soiCauDetailVC.modalPresentationStyle = .fullScreen
        present(soiCauDetailVC, animated: true, completion: nil)
    }
    
}
