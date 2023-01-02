//
//  HomeCell.swift
//  AppcentCase
//
//  Created by Oğuzhan Erdem on 2.01.2023.
//

import UIKit

class HomeCell: UITableViewCell {

    @IBOutlet weak var NewImage: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        congifureCell()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
       
    }

    private func congifureCell() {
        NewImage.layer.cornerRadius = 20
    }
}
