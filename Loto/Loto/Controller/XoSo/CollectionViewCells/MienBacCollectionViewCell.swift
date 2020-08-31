//
//  MienBacCollectionViewCell.swift
//  Loto
//
//  Created by Nam Hoang Van on 8/31/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import UIKit

class MienBacCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var days: UILabel!
    @IBOutlet weak var dacBietLb: UILabel!
    @IBOutlet weak var g1Lb: UILabel!
    @IBOutlet weak var g2_01Lb: UILabel!
    @IBOutlet weak var g2_02Lb: UILabel!
    @IBOutlet weak var g3_01Lb: UILabel!
    @IBOutlet weak var g3_02Lb: UILabel!
    @IBOutlet weak var g3_03Lb: UILabel!
    @IBOutlet weak var g3_04Lb: UILabel!
    @IBOutlet weak var g3_05Lb: UILabel!
    @IBOutlet weak var g3_06Lb: UILabel!
    @IBOutlet weak var g4_01Lb: UILabel!
    @IBOutlet weak var g4_02Lb: UILabel!
    @IBOutlet weak var g4_03Lb: UILabel!
    @IBOutlet weak var g4_04Lb: UILabel!
    @IBOutlet weak var g5_01Lb: UILabel!
    @IBOutlet weak var g5_02Lb: UILabel!
    @IBOutlet weak var g5_03Lb: UILabel!
    @IBOutlet weak var g5_04Lb: UILabel!
    @IBOutlet weak var g5_05Lb: UILabel!
    @IBOutlet weak var g5_06Lb: UILabel!
    @IBOutlet weak var g6_01Lb: UILabel!
    @IBOutlet weak var g6_02Lb: UILabel!
    @IBOutlet weak var g6_03Lb: UILabel!
    @IBOutlet weak var g7_01Lb: UILabel!
    @IBOutlet weak var g7_02Lb: UILabel!
    @IBOutlet weak var g7_03Lb: UILabel!
    @IBOutlet weak var g7_04Lb: UILabel!
    
    @IBOutlet weak var quangCaoView: UIView!
    
    @IBOutlet weak var duoi_00Lb: UILabel!
    @IBOutlet weak var duoi_01Lb: UILabel!
    @IBOutlet weak var duoi_02Lb: UILabel!
    @IBOutlet weak var duoi_03Lb: UILabel!
    @IBOutlet weak var duoi_04Lb: UILabel!
    @IBOutlet weak var duoi_05Lb: UILabel!
    @IBOutlet weak var duoi_06Lb: UILabel!
    @IBOutlet weak var duoi_07Lb: UILabel!
    @IBOutlet weak var duoi_08Lb: UILabel!
    @IBOutlet weak var duoi_09Lb: UILabel!
    
    @IBOutlet weak var dau_00Lb: UILabel!
    @IBOutlet weak var dau_01Lb: UILabel!
    @IBOutlet weak var dau_02Lb: UILabel!
    @IBOutlet weak var dau_03Lb: UILabel!
    @IBOutlet weak var dau_04Lb: UILabel!
    @IBOutlet weak var dau_05Lb: UILabel!
    @IBOutlet weak var dau_06Lb: UILabel!
    @IBOutlet weak var dau_07Lb: UILabel!
    @IBOutlet weak var dau_08Lb: UILabel!
    @IBOutlet weak var dau_09Lb: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func loadDataCells()
    {
        let data = "000"
        self.dacBietLb.text = data
        self.g1Lb.text = data
        self.g2_01Lb.text = data
        self.g2_02Lb.text = data
        self.g3_01Lb.text = data
        self.g3_02Lb.text = data
        self.g3_03Lb.text = data
        self.g3_04Lb.text = data
        self.g3_05Lb.text = data
        self.g3_06Lb.text = data
        self.g4_01Lb.text = data
        self.g4_02Lb.text = data
        self.g4_03Lb.text = data
        self.g4_04Lb.text = data
        self.g5_01Lb.text = data
        self.g5_02Lb.text = data
        self.g5_03Lb.text = data
        self.g5_04Lb.text = data
        self.g5_05Lb.text = data
        self.g5_06Lb.text = data
        self.g6_01Lb.text = data
        self.g6_02Lb.text = data
        self.g6_03Lb.text = data
        self.g7_01Lb.text = data
        self.g7_02Lb.text = data
        self.g7_03Lb.text = data
        self.g7_04Lb.text = data


    }

}
