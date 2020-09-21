//
//  TraCuuViewController.swift
//  Loto
//
//  Created by Nam Hoang Van on 9/1/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import UIKit
import FSCalendar

class TraCuuViewController: BaseViewController, FSCalendarDelegate {

    @IBOutlet weak var calendar: FSCalendar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        calendar.delegate = self
        calendar.scrollDirection = .vertical
        self.title = "Tra cứu kết quả"
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        let time = DateFormatter()
        time.dateFormat = "YYYY-MM-dd"
        print(time.string(from: date))
        
        DataServer.share.datemienbac = time.string(from: date)
        DataServer.share.datemiennam = time.string(from: date)
        
        
        let tabbar = TabbarViewController()
        navigationController?.navigationBar.isHidden = true
        BaseViewController.isCheck = false
        tabbar.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(tabbar, animated: true)
    }

}
