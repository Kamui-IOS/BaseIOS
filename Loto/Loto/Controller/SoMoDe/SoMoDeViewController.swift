//
//  SoMoDeViewController.swift
//  Loto
//
//  Created by Nam Hoang Van on 8/31/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class SoMoDeViewController: BaseViewController {

    @IBOutlet weak var viewPlayer: UIView!
    @IBOutlet weak var numberLabel: UILabel!
    var player: AVPlayer!
    var avpController = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupTableView()
        setRightNavi()
        self.title = "Con số may mắn"
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
        
        self.numberLabel.text = "Con số may mắn là: "
        
        guard let path = Bundle.main.path(forResource: "roulette_ball_v2_compress", ofType:"mp4") else {
            print("video.m4v not found")
            return
        }
        player = AVPlayer(url: URL(fileURLWithPath: path))

        avpController.player = player

        avpController.view.frame.size.height = viewPlayer.frame.size.height

        avpController.view.frame.size.width = viewPlayer.frame.size.width

        self.addChild(avpController)
        self.viewPlayer.addSubview(avpController.view)
        player.play()

    }
    
    @IBAction func quaySo(_ sender: Any) {
        let number = Int.random(in: 00...99)
        self.numberLabel.text = "Con số may mắn là: " + "\(number)"
    }
}

