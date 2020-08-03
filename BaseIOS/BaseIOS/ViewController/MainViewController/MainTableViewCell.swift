//
//  MainTableViewCell.swift
//  BaseIOS
//
//  Created by Nam Hoang Van on 8/3/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    
    @IBOutlet weak var cellName: UILabel!
    @IBOutlet weak var cellAge: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
