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
    
    @IBOutlet weak var duoi_0: UILabel!
    @IBOutlet weak var duoi_1: UILabel!
    @IBOutlet weak var duoi_2: UILabel!
    @IBOutlet weak var duoi_3: UILabel!
    @IBOutlet weak var duoi_4: UILabel!
    @IBOutlet weak var duoi_5: UILabel!
    @IBOutlet weak var duoi_6: UILabel!
    @IBOutlet weak var duoi_7: UILabel!
    @IBOutlet weak var duoi_8: UILabel!
    @IBOutlet weak var duoi_9: UILabel!
    
    @IBOutlet weak var dau_0: UILabel!
    @IBOutlet weak var dau_1: UILabel!
    @IBOutlet weak var dau_2: UILabel!
    @IBOutlet weak var dau_3: UILabel!
    @IBOutlet weak var dau_4: UILabel!
    @IBOutlet weak var dau_5: UILabel!
    @IBOutlet weak var dau_6: UILabel!
    @IBOutlet weak var dau_7: UILabel!
    @IBOutlet weak var dau_8: UILabel!
    @IBOutlet weak var dau_9: UILabel!
    
    
    var dataLoto =  [String]()
    
    var dauduoiArr = [DauDuoiLoto]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func loadDataCells(date: String ,data: Jackport)
    {
        
        self.dataLoto.append(data.jackport ?? "")
        self.dataLoto.append(data.first ?? "")
        self.dataLoto.append(contentsOf: data.second ?? [])
        self.dataLoto.append(contentsOf: data.third ?? [])
        self.dataLoto.append(contentsOf: data.fourth ?? [])
        self.dataLoto.append(contentsOf: data.fiveth ?? [])
        self.dataLoto.append(contentsOf: data.sixth ?? [])
        self.dataLoto.append(contentsOf: data.seventh ?? [])
        
//        dauduoi?.getData(data: <#T##String#>)
        loto(dataLotoArray: self.dataLoto)
        
        self.days.text = date
        
        self.dacBietLb.text = data.jackport
        self.g1Lb.text = data.first
        self.g2_01Lb.text = data.second?[0]
        self.g2_02Lb.text = data.second?[1]
        self.g3_01Lb.text = data.third?[0]
        self.g3_02Lb.text = data.third?[1]
        self.g3_03Lb.text = data.third?[2]
        self.g3_04Lb.text = data.third?[3]
        self.g3_05Lb.text = data.third?[4]
        self.g3_06Lb.text = data.third?[5]
        self.g4_01Lb.text = data.fourth?[0]
        self.g4_02Lb.text = data.fourth?[1]
        self.g4_03Lb.text = data.fourth?[2]
        self.g4_04Lb.text = data.fourth?[3]
        self.g5_01Lb.text = data.fiveth?[0]
        self.g5_02Lb.text = data.fiveth?[1]
        self.g5_03Lb.text = data.fiveth?[2]
        self.g5_04Lb.text = data.fiveth?[3]
        self.g5_05Lb.text = data.fiveth?[4]
        self.g5_06Lb.text = data.fiveth?[5]
        self.g6_01Lb.text = data.sixth?[0]
        self.g6_02Lb.text = data.sixth?[1]
        self.g6_03Lb.text = data.sixth?[2]
        self.g7_01Lb.text = data.seventh?[0]
        self.g7_02Lb.text = data.seventh?[1]
        self.g7_03Lb.text = data.seventh?[2]
        self.g7_04Lb.text = data.seventh?[3]

        
    }
    
    func loto(dataLotoArray: [String]) {
        
        for str in dataLotoArray {
            let dauduoi = DauDuoiLoto()
            dauduoi.getData(data: str)
            self.dauduoiArr.append(dauduoi)
        }
        showData(lotoArr: self.dauduoiArr)
    }
    
    func showData(lotoArr: [DauDuoiLoto]) {
        
        showFoot(data: lotoArr)
    }
    
    func showFoot(data: [DauDuoiLoto]){
        self.dau_0.text = getDataLoto(isCheck: true, data: data, dataCheck: "0")
        self.dau_1.text = getDataLoto(isCheck: true, data: data, dataCheck: "1")
        self.dau_2.text = getDataLoto(isCheck: true, data: data, dataCheck: "2")
        self.dau_3.text = getDataLoto(isCheck: true, data: data, dataCheck: "3")
        self.dau_4.text = getDataLoto(isCheck: true, data: data, dataCheck: "4")
        self.dau_5.text = getDataLoto(isCheck: true, data: data, dataCheck: "5")
        self.dau_6.text = getDataLoto(isCheck: true, data: data, dataCheck: "6")
        self.dau_7.text = getDataLoto(isCheck: true, data: data, dataCheck: "7")
        self.dau_8.text = getDataLoto(isCheck: true, data: data, dataCheck: "8")
        self.dau_9.text = getDataLoto(isCheck: true, data: data, dataCheck: "9")
        
        self.duoi_0.text = getDataLoto(isCheck: true, data: data, dataCheck: "0")
        self.duoi_1.text = getDataLoto(isCheck: true, data: data, dataCheck: "1")
        self.duoi_2.text = getDataLoto(isCheck: true, data: data, dataCheck: "2")
        self.duoi_3.text = getDataLoto(isCheck: true, data: data, dataCheck: "3")
        self.duoi_4.text = getDataLoto(isCheck: true, data: data, dataCheck: "4")
        self.duoi_5.text = getDataLoto(isCheck: true, data: data, dataCheck: "5")
        self.duoi_6.text = getDataLoto(isCheck: true, data: data, dataCheck: "6")
        self.duoi_7.text = getDataLoto(isCheck: true, data: data, dataCheck: "7")
        self.duoi_8.text = getDataLoto(isCheck: true, data: data, dataCheck: "8")
        self.duoi_9.text = getDataLoto(isCheck: true, data: data, dataCheck: "9")
        }
        
    func getDataLoto(isCheck: Bool ,data: [DauDuoiLoto], dataCheck: String) -> String {
        var dataHF = [String]()
        var result = [String]()
        var dataArr = [DauDuoiLoto]()
        if isCheck {
            dataArr = data.filter{$0.duoi == "\(dataCheck)"}
            dataArr.forEach { (item) in
                dataHF.append(item.dau ?? "")
            }
        } else {
            dataArr = data.filter{$0.dau == "\(dataCheck)"}
            dataArr.forEach { (item) in
                dataHF.append(item.duoi ?? "")
            }
        }
        
        let frequency = dataHF.frequency
        for (key, value) in frequency {
            var vl = ""
            if value > 1 {
                vl = "\(key)(\(value))"
            }else {
                vl = "\(key)"
            }
            result.append(vl)
        }
        result = result.sorted()
        return result.removingDuplicatesAndGetNumberValue().joined(separator: ",")
    }
}
