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
        self.randomNumber.text = "Hãy tìm kiếm vận may của chính mình!"
        setupTableView()
    }
    
    func setupTableView() {
        
        let slices = [ CarnivalWheelSlice.init(title: "Jackport 100 $"),
        CarnivalWheelSlice.init(title: "0 $"),
        CarnivalWheelSlice.init(title: "2 $"),
        CarnivalWheelSlice.init(title: "5 $"),
        CarnivalWheelSlice.init(title: "10 $"),
        CarnivalWheelSlice.init(title: "15 $"),
        CarnivalWheelSlice.init(title: "25 $"),
        CarnivalWheelSlice.init(title: "50 $")]
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
        let number = Int.random(in: 0..<8)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.spinningWhell.startAnimating(fininshIndex: number) { (finished) in
                
                if number >= 2 {
                    self.randomNumber.text = "Chúc mừng: " + "\(self.spinningWhell.slices[number - 2].title)"
                } else {
                    self.randomNumber.text = "Chúc mừng: " + "\(self.spinningWhell.slices[number + 6].title)"
                }
                
            }
        }
    }
}

