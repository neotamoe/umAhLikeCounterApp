//
//  CustomSpeakerTableViewCell.swift
//  umAhLikeCounter
//
//  Created by Neota Moe on 8/11/17.
//  Copyright © 2017 Neota Moe. All rights reserved.
//

import UIKit

class CustomSpeakerTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var umLabel: UILabel!
    @IBOutlet weak var ahLabel: UILabel!
    @IBOutlet weak var butLabel: UILabel!
    @IBOutlet weak var soLabel: UILabel!
    @IBOutlet weak var andLabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var youKnowLabel: UILabel!
    @IBOutlet weak var otherLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
