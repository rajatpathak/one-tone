//
//  message.swift
//  one tone
//
//  Created by Love on 25/03/18.
//  Copyright © 2018 Love. All rights reserved.
//

import UIKit

class message: UITableViewCell {
    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var time: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.personImage.layer.masksToBounds = true
        self.personImage.layer.cornerRadius = self.personImage.frame.height / 2
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}