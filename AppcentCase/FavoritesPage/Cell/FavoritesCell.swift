//
//  FavoritesCell.swift
//  AppcentCase
//
//  Created by Oğuzhan Erdem on 2.01.2023.
//

import UIKit

class FavoritesCell: UITableViewCell {
    @IBOutlet weak var favTitleLbl: UILabel!
    @IBOutlet weak var favDescLbl: UILabel!
    @IBOutlet weak var favImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
