//
//  TopicTableViewCell.swift
//  TV-CV
//
//  Created by Zaw Zin Phyo on 11/8/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit

class TopicTableViewCell: UITableViewCell {

    @IBOutlet weak var ivTopic: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblReleasedDate: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
