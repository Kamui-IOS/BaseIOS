//
//  SoMoDeTableViewCell.swift
//  Loto
//
//  Created by Nam Hoang Van on 9/1/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import UIKit

class SoMoDeTableViewCell: UITableViewCell {
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var detailStatus: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func loadDataCell() {
        let data = ["status": "Anh em gặp nhau", "detailStatus": "Cặp số tương ứng: 01"]
        self.status.text = data["status"]
        self.detailStatus.text = data["detailStatus"]
    }
    
}
