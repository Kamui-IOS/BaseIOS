//
//  SoMoDeViewController.swift
//  Loto
//
//  Created by Nam Hoang Van on 8/31/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import UIKit
import TTFortuneWheel

class SoMoDeViewController: BaseViewController {

    @IBOutlet weak var randomNumber: UILabel!
    @IBOutlet weak var spinningWhell: TTFortuneWheel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Con số may mắn"
        self.randomNumber.text = "Hãy tìm kiếm con số may mắn"
        setupTableView()
    }
    
    func setupTableView() {
        var slices = [CarnivalWheelSlice]()
        
        for idx in 0..<99 {
           let item =  CarnivalWheelSlice(title: "\(idx)")
            slices.append(item)
        }
        
        spinningWhell.slices = slices

        spinningWhell.equalSlices = true
        spinningWhell.frameStroke.width = 0
        spinningWhell.titleRotation = CGFloat.pi
        spinningWhell.slices.enumerated().forEach { (pair) in
            let slice = pair.element as! CarnivalWheelSlice
            let offset = pair.offset
            switch offset % 4 {
            case 0: slice.style = .brickRed
            case 1: slice.style = .sandYellow
            case 2: slice.style = .babyBlue
            case 3: slice.style = .deepBlue
            default: slice.style = .brickRed
            }
            
        }
    }
    @IBAction func rotateButton(_ sender: Any) {
        spinningWhell.startAnimating()
        let number = Int.random(in: 0..<99)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.spinningWhell.startAnimating(fininshIndex: number) { (finished) in
                if number >= 2 {
                    self.randomNumber.text = "Số may mắn của bạn: " + "\(self.spinningWhell.slices[number].title)" + " "
                } else {
                    self.randomNumber.text = "Số may mắn của bạn: " + "\(self.spinningWhell.slices[number].title)"
                }
            }
        }
    }
}

