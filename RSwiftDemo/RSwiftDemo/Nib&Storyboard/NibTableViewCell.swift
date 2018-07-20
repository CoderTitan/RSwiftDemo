//
//  NibTableViewCell.swift
//  RSwiftDemo
//
//  Created by quanjunt on 2018/7/20.
//  Copyright © 2018年 quanjunt. All rights reserved.
//

import UIKit

class NibTableViewCell: UITableViewCell {

    @IBOutlet weak var leftLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
