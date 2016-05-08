//
//  TestTableViewCell.swift
//  PrototypeProjects
//
//  Created by Pattanapong Chankaew on 1/20/2559 BE.
//  Copyright © 2559 Pattanapong Chankaew. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {

    @IBOutlet var labeldata: UILabel!
    @IBOutlet var labelcount: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
