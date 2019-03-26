//
//  MenuTableViewCell.swift
//  DropDownAnimated
//
//  Created by Qaptive Technologies on 26/03/19.
//  Copyright © 2019 Qaptive Technologies. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
    
    @IBOutlet weak var menuItemLB: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
