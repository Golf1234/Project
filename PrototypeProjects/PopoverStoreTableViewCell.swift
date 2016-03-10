//
//  PopoverStoreTableViewCell.swift
//  PrototypeProjects
//
//  Created by Pattanapong Chankaew on 1/27/2559 BE.
//  Copyright © 2559 Pattanapong Chankaew. All rights reserved.
//

import UIKit

class PopoverStoreTableViewCell: UITableViewCell {

    @IBOutlet var labelpop: UILabel!
    
    @IBOutlet var labelunit: UILabel!
    
    @IBOutlet var labelunit2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
