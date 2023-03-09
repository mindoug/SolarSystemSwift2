//
//  PlanetCellTableViewCell.swift
//  SolarSystemSwift2
//
//  Created by Mindy Douglas on 3/1/23.
//

import UIKit

class PlanetCell: UITableViewCell {
    
    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var shortDescriptionLabel: UILabel!
    
    func update(with planet: Planet) {
        planetImage.image = planet.planetImage
        nameLabel.text = planet.name
        shortDescriptionLabel.text = planet.shortDescription
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
