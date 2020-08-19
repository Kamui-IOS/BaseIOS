//
//  HomeTableViewCell.swift
//  BaseIOS
//
//  Created by Nam Hoang Van on 8/16/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import UIKit

protocol HomeTableViewCellDelegate {
    func removeData(id: Int)
}

class HomeTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbAge: UILabel!
    
    var delegate: HomeTableViewCellDelegate?
    var id: Int?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func loadDataCells(data: NhanVien) {
        self.id = data.id
        self.lbName.text = data.name
        self.lbAge.text = String(data.age)
    }
    @IBAction func actionDeleteUser(_ sender: UIButton) {
        delegate?.removeData(id: self.id!)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
