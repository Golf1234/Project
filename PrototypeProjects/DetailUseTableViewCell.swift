//
//  DetailUseTableViewCell.swift
//  PrototypeProjects
//
//  Created by Pattanapong Chankaew on 1/28/2559 BE.
//  Copyright © 2559 Pattanapong Chankaew. All rights reserved.
//

import UIKit

class DetailUseTableViewCell: UITableViewCell {

    @IBOutlet var NO: UILabel!
    
    @IBOutlet var namechemi: UILabel!
    
    @IBOutlet var unit: UILabel!
    
    @IBOutlet var number: UILabel!
    
    @IBOutlet var name: UILabel!
    
    
    @IBOutlet var kg: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
