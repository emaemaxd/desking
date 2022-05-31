//
//  CalendarTableViewCell.swift
//  desking-app
//
//  Created by Ema xd on 10.05.22.
//

import UIKit

class CalendarTableViewCell: UITableViewCell {

    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
      //  backgroundColor = UIColor.blue
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
