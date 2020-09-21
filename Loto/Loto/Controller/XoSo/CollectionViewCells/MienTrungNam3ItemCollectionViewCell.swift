//
//  MienTrungNam3ItemCollectionViewCell.swift
//  Loto
//
//  Created by Nam Hoang Van on 8/31/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import UIKit

class MienTrungNam3ItemCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var days: UILabel!
    
    @IBOutlet weak var city_01: UILabel!
    @IBOutlet weak var city_02: UILabel!
    @IBOutlet weak var city_03: UILabel!
    @IBOutlet weak var cityLoto01: UILabel!
    @IBOutlet weak var cityLoto02: UILabel!
    @IBOutlet weak var cityLoto03: UILabel!
    
    @IBOutlet weak var g8_01: UILabel!
    @IBOutlet weak var g8_02: UILabel!
    @IBOutlet weak var g8_03: UILabel!
    
    @IBOutlet weak var g7_01: UILabel!
    @IBOutlet weak var g7_02: UILabel!
    @IBOutlet weak var g7_03: UILabel!
    
    @IBOutlet weak var g6_011: UILabel!
    @IBOutlet weak var g6_012: UILabel!
    @IBOutlet weak var g6_013: UILabel!
    @IBOutlet weak var g6_021: UILabel!
    @IBOutlet weak var g6_022: UILabel!
    @IBOutlet weak var g6_023: UILabel!
    @IBOutlet weak var g6_031: UILabel!
    @IBOutlet weak var g6_032: UILabel!
    @IBOutlet weak var g6_033: UILabel!
    
    @IBOutlet weak var g5_01: UILabel!
    @IBOutlet weak var g5_02: UILabel!
    @IBOutlet weak var g5_03: UILabel!
    
    @IBOutlet weak var g4_011: UILabel!
    @IBOutlet weak var g4_012: UILabel!
    @IBOutlet weak var g4_013: UILabel!
    @IBOutlet weak var g4_014: UILabel!
    @IBOutlet weak var g4_015: UILabel!
    @IBOutlet weak var g4_016: UILabel!
    @IBOutlet weak var g4_017: UILabel!
    
    @IBOutlet weak var g4_021: UILabel!
    @IBOutlet weak var g4_022: UILabel!
    @IBOutlet weak var g4_023: UILabel!
    @IBOutlet weak var g4_024: UILabel!
    @IBOutlet weak var g4_025: UILabel!
    @IBOutlet weak var g4_026: UILabel!
    @IBOutlet weak var g4_027: UILabel!
    
    @IBOutlet weak var g4_031: UILabel!
    @IBOutlet weak var g4_032: UILabel!
    @IBOutlet weak var g4_033: UILabel!
    @IBOutlet weak var g4_034: UILabel!
    @IBOutlet weak var g4_035: UILabel!
    @IBOutlet weak var g4_036: UILabel!
    @IBOutlet weak var g4_037: UILabel!
    
    
    @IBOutlet weak var g3_011: UILabel!
    @IBOutlet weak var g3_012: UILabel!
    @IBOutlet weak var g3_021: UILabel!
    @IBOutlet weak var g3_022: UILabel!
    @IBOutlet weak var g3_031: UILabel!
    @IBOutlet weak var g3_032: UILabel!
    
    @IBOutlet weak var g2_01: UILabel!
    @IBOutlet weak var g2_02: UILabel!
    @IBOutlet weak var g2_03: UILabel!
    
    @IBOutlet weak var g1_01: UILabel!
    @IBOutlet weak var g1_02: UILabel!
    @IBOutlet weak var g1_03: UILabel!
    
    @IBOutlet weak var db_01: UILabel!
    @IBOutlet weak var db_02: UILabel!
    @IBOutlet weak var db_03: UILabel!
    
    @IBOutlet weak var dau_01: UILabel!
    @IBOutlet weak var dau_02: UILabel!
    @IBOutlet weak var dau_03: UILabel!
    
    @IBOutlet weak var dau_11: UILabel!
    @IBOutlet weak var dau_12: UILabel!
    @IBOutlet weak var dau_13: UILabel!
    
    @IBOutlet weak var dau_21: UILabel!
    @IBOutlet weak var dau_22: UILabel!
    @IBOutlet weak var dau_23: UILabel!
    
    @IBOutlet weak var dau_31: UILabel!
    @IBOutlet weak var dau_32: UILabel!
    @IBOutlet weak var dau_33: UILabel!
    
    @IBOutlet weak var dau_41: UILabel!
    @IBOutlet weak var dau_42: UILabel!
    @IBOutlet weak var dau_43: UILabel!
    
    @IBOutlet weak var dau_51: UILabel!
    @IBOutlet weak var dau_52: UILabel!
    @IBOutlet weak var dau_53: UILabel!
    
    @IBOutlet weak var dau_61: UILabel!
    @IBOutlet weak var dau_62: UILabel!
    @IBOutlet weak var dau_63: UILabel!
    
    @IBOutlet weak var dau_71: UILabel!
    @IBOutlet weak var dau_72: UILabel!
    @IBOutlet weak var dau_73: UILabel!
    
    @IBOutlet weak var dau_81: UILabel!
    @IBOutlet weak var dau_82: UILabel!
    @IBOutlet weak var dau_83: UILabel!
    
    @IBOutlet weak var dau_91: UILabel!
    @IBOutlet weak var dau_92: UILabel!
    @IBOutlet weak var dau_93: UILabel!
    
    var dataLoto01 =  [String]()
    var dataLoto02 =  [String]()
    var dataLoto03 =  [String]()

    var dauduoiArr01 = [DauDuoiLoto]()
    var dauduoiArr02 = [DauDuoiLoto]()
    var dauduoiArr03 = [DauDuoiLoto]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func loadCell(date: String, data: [Jackport]) {
        
        self.dataLoto01.append(data[0].jackport ?? "")
        self.dataLoto02.append(data[1].jackport ?? "")
        self.dataLoto03.append(data[2].jackport ?? "")

        self.dataLoto01.append(data[0].first ?? "")
        self.dataLoto02.append(data[1].first ?? "")
        self.dataLoto03.append(data[2].first ?? "")
        
        self.dataLoto01.append(contentsOf: data[0].second ?? [])
        self.dataLoto02.append(contentsOf: data[1].second ?? [])
        self.dataLoto03.append(contentsOf: data[2].second ?? [])
        
        self.dataLoto01.append(contentsOf: data[0].third ?? [])
        self.dataLoto02.append(contentsOf: data[1].third ?? [])
        self.dataLoto03.append(contentsOf: data[2].third ?? [])
        
        self.dataLoto01.append(contentsOf: data[0].fourth ?? [])
        self.dataLoto02.append(contentsOf: data[1].fourth ?? [])
        self.dataLoto03.append(contentsOf: data[2].fourth ?? [])
        
        self.dataLoto01.append(contentsOf: data[0].fiveth ?? [])
        self.dataLoto02.append(contentsOf: data[1].fiveth ?? [])
        self.dataLoto03.append(contentsOf: data[2].fiveth ?? [])
        
        self.dataLoto01.append(contentsOf: data[0].sixth ?? [])
        self.dataLoto02.append(contentsOf: data[1].sixth ?? [])
        self.dataLoto03.append(contentsOf: data[2].sixth ?? [])
        
        self.dataLoto01.append(contentsOf: data[0].seventh ?? [])
        self.dataLoto02.append(contentsOf: data[1].seventh ?? [])
        self.dataLoto03.append(contentsOf: data[2].seventh ?? [])
        
        self.dataLoto01.append(data[0].eighth ?? "")
        self.dataLoto02.append(data[1].eighth ?? "")
        self.dataLoto03.append(data[2].eighth ?? "")
        
        self.loto(array01: dataLoto01, array02: dataLoto02, array03: dataLoto03)
        
        self.days.text = date
        
        self.city_01.text = data[0].cityName
        self.city_02.text = data[1].cityName
        self.city_03.text = data[2].cityName
        self.cityLoto01.text = data[0].cityName
        self.cityLoto02.text = data[1].cityName
        self.cityLoto03.text = data[2].cityName
        
        self.g8_01.text = data[0].eighth
        self.g8_02.text = data[1].eighth
        self.g8_03.text = data[2].eighth
        
        if let data_seventh = data[0].seventh {
            self.g7_01.text = data_seventh[0]
        }
        if let data_seventh = data[1].seventh {
            self.g7_02.text = data_seventh[0]
        }
        if let data_seventh = data[2].seventh {
            self.g7_03.text = data_seventh[0]
        }
        
        if let data_six = data[0].sixth {
            self.g6_011.text = data_six[0]
            self.g6_012.text = data_six[1]
            self.g6_013.text = data_six[2]
        }
        if let data_six = data[1].sixth {
            self.g6_021.text = data_six[0]
            self.g6_022.text = data_six[1]
            self.g6_023.text = data_six[2]
        }
        if let data_six = data[2].sixth {
            self.g6_031.text = data_six[0]
            self.g6_032.text = data_six[1]
            self.g6_033.text = data_six[2]
        }
        
        if let data_fiveth = data[0].fiveth {
            self.g5_01.text = data_fiveth[0]
        }
        if let data_fiveth = data[1].fiveth {
            self.g5_02.text = data_fiveth[0]
        }
        if let data_fiveth = data[2].fiveth {
            self.g5_03.text = data_fiveth[0]
        }
        
        if let data_fourth = data[0].fourth {
            self.g4_011.text = data_fourth[0]
            self.g4_012.text = data_fourth[1]
            self.g4_013.text = data_fourth[2]
            self.g4_014.text = data_fourth[3]
            self.g4_015.text = data_fourth[4]
            self.g4_016.text = data_fourth[5]
        }
        if let data_fourth = data[1].fourth {
            self.g4_021.text = data_fourth[0]
            self.g4_022.text = data_fourth[1]
            self.g4_023.text = data_fourth[2]
            self.g4_024.text = data_fourth[3]
            self.g4_025.text = data_fourth[4]
            self.g4_026.text = data_fourth[5]
        }
        if let data_fourth = data[2].fourth {
            self.g4_031.text = data_fourth[0]
            self.g4_032.text = data_fourth[1]
            self.g4_033.text = data_fourth[2]
            self.g4_034.text = data_fourth[3]
            self.g4_035.text = data_fourth[4]
            self.g4_036.text = data_fourth[5]
        }
        
        if let data_third = data[0].third {
            self.g3_011.text = data_third[0]
            self.g3_012.text = data_third[1]
        }
        if let data_third = data[1].third {
            self.g3_021.text = data_third[0]
            self.g3_022.text = data_third[1]
        }
        if let data_third = data[2].third {
            self.g3_031.text = data_third[0]
            self.g3_032.text = data_third[1]
        }
        
        if let data_second = data[0].second {
            self.g2_01.text = data_second[0]
        }
        if let data_second = data[1].second {
            self.g2_02.text = data_second[0]
        }
        if let data_second = data[2].second {
            self.g2_03.text = data_second[0]
        }
        
        self.g1_01.text = data[0].first
        self.g1_02.text = data[1].first
        self.g1_03.text = data[2].first
        
        self.db_01.text = data[0].jackport
        self.db_02.text = data[1].jackport
        self.db_03.text = data[2].jackport
    }
    
    func loto(array01: [String], array02: [String], array03: [String]) {
        for str in array01 {
            let dauduoi = DauDuoiLoto()
            dauduoi.getData(data: str)
            self.dauduoiArr01.append(dauduoi)
        }
        
        for str in array02 {
            let dauduoi = DauDuoiLoto()
            dauduoi.getData(data: str)
            self.dauduoiArr02.append(dauduoi)
        }
        
        for str in array03 {
            let dauduoi = DauDuoiLoto()
            dauduoi.getData(data: str)
            self.dauduoiArr03.append(dauduoi)
        }
        showFoot01(data: self.dauduoiArr01)
        showFoot02(data: self.dauduoiArr02)
        showFoot03(data: self.dauduoiArr03)
        
    }
    
    func showFoot01(data: [DauDuoiLoto]) {
        self.dau_01.text = getDataLoto(isCheck: false, data: data, dataCheck: "0")
        self.dau_11.text = getDataLoto(isCheck: false, data: data, dataCheck: "1")
        self.dau_21.text = getDataLoto(isCheck: false, data: data, dataCheck: "2")
        self.dau_31.text = getDataLoto(isCheck: false, data: data, dataCheck: "3")
        self.dau_41.text = getDataLoto(isCheck: false, data: data, dataCheck: "4")
        self.dau_51.text = getDataLoto(isCheck: false, data: data, dataCheck: "5")
        self.dau_61.text = getDataLoto(isCheck: false, data: data, dataCheck: "6")
        self.dau_71.text = getDataLoto(isCheck: false, data: data, dataCheck: "7")
        self.dau_81.text = getDataLoto(isCheck: false, data: data, dataCheck: "8")
        self.dau_91.text = getDataLoto(isCheck: false, data: data, dataCheck: "9")
    }
    
    func showFoot02(data: [DauDuoiLoto]) {
        self.dau_02.text = getDataLoto(isCheck: false, data: data, dataCheck: "0")
        self.dau_12.text = getDataLoto(isCheck: false, data: data, dataCheck: "1")
        self.dau_22.text = getDataLoto(isCheck: false, data: data, dataCheck: "2")
        self.dau_32.text = getDataLoto(isCheck: false, data: data, dataCheck: "3")
        self.dau_42.text = getDataLoto(isCheck: false, data: data, dataCheck: "4")
        self.dau_52.text = getDataLoto(isCheck: false, data: data, dataCheck: "5")
        self.dau_62.text = getDataLoto(isCheck: false, data: data, dataCheck: "6")
        self.dau_72.text = getDataLoto(isCheck: false, data: data, dataCheck: "7")
        self.dau_82.text = getDataLoto(isCheck: false, data: data, dataCheck: "8")
        self.dau_92.text = getDataLoto(isCheck: false, data: data, dataCheck: "9")
    }
    
    func showFoot03(data: [DauDuoiLoto]) {
        self.dau_03.text = getDataLoto(isCheck: false, data: data, dataCheck: "0")
        self.dau_13.text = getDataLoto(isCheck: false, data: data, dataCheck: "1")
        self.dau_23.text = getDataLoto(isCheck: false, data: data, dataCheck: "2")
        self.dau_33.text = getDataLoto(isCheck: false, data: data, dataCheck: "3")
        self.dau_43.text = getDataLoto(isCheck: false, data: data, dataCheck: "4")
        self.dau_53.text = getDataLoto(isCheck: false, data: data, dataCheck: "5")
        self.dau_63.text = getDataLoto(isCheck: false, data: data, dataCheck: "6")
        self.dau_73.text = getDataLoto(isCheck: false, data: data, dataCheck: "7")
        self.dau_83.text = getDataLoto(isCheck: false, data: data, dataCheck: "8")
        self.dau_93.text = getDataLoto(isCheck: false, data: data, dataCheck: "9")
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
