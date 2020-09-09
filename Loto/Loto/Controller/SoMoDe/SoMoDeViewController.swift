//
//  SoMoDeViewController.swift
//  Loto
//
//  Created by Nam Hoang Van on 8/31/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import UIKit

class SoMoDeViewController: BaseViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupTableView()
        setRightNavi()
        self.title = "Hôm nay bạn mơ gì?"
    }
    
    override func setLeftNavi() {
        let leftButton = UIBarButtonItem(title: "Back", style: .done, target: self, action: #selector(back))
        navigationItem.leftBarButtonItem = leftButton
    }
    
    func setRightNavi() {
        let rightButton = UIBarButtonItem(title: "Search", style: .done, target: self, action: #selector(search))
        navigationItem.rightBarButtonItem = rightButton
    }
    
    override func back() {
        dismiss(animated: true, completion: nil)
        SideBarMenu.isCheckSideMenu = 0
    }
    
    func setupTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "SoMoDeTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
}

extension SoMoDeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SoMoDeTableViewCell
        cell.loadDataCell()
        return cell
    }
    
    
}
