//
//  LandmarksTableViewCell.swift
//  Landmarks
//
//  Created by Asif Seraje on 24/5/24.
//

import UIKit

class LandmarksTableViewCell: UITableViewCell {

    @IBOutlet weak var subTitle: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imgView.layer.cornerRadius = 5
        imgView.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
