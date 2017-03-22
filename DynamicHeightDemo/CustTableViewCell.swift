//
//  CustTableViewCell.swift
//  DynamicHeightDemo
//
//  Created by Xiaodan Wang on 3/21/17.
//  Copyright © 2017 Xiaodan Wang. All rights reserved.
//

import UIKit

class CustTableViewCell: UITableViewCell {

    @IBOutlet weak var descLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
