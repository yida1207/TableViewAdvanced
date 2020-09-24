//
//  HebeTableViewCell.swift
//  TableViewAdvanced
//
//  Created by Yida on 2020/9/23.
//  Copyright © 2020 Yida. All rights reserved.
//

import UIKit

class HebeTableViewCell: UITableViewCell {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heart: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with hebe: Hebe){
        if hebe is HebeMusic{
            nameLabel.text = (hebe as! HebeMusic).name
            photoImageView.image = UIImage(named: (hebe as! HebeMusic).imageName)
            if (hebe as! HebeMusic).favority == true{
                heart.setTitle("💚", for: .normal)
            }else{
                heart.setTitle("🖤", for: .normal)
            }
        }else if hebe is HebeMovie{
            nameLabel.text = (hebe as! HebeMovie).name
            photoImageView.image = UIImage(named: (hebe as! HebeMovie).imageName)
        }
    }
}
