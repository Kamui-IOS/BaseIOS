//
//  HomeTableViewCell.swift
//  BaseIOS
//
//  Created by Nam Hoang Van on 8/16/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbAge: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func loadDataCells(data: NhanVien) {
        self.lbName.text = data.name
        self.lbAge.text = String(data.age)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
