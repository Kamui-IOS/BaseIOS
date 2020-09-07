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
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        let time = DateFormatter()
        time.dateFormat = "EEEE YYYY-MM-dd"
        print(time.string(from: date))
        
        let tabbar = TabbarViewController()
        
        tabbar.modalPresentationStyle = .fullScreen
        
        navigationController?.pushViewController(tabbar, animated: true)
    }

}
