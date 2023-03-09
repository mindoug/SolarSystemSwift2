//
//  PlanetCollectionCell.swift
//  SolarSystemSwift2
//
//  Created by Mindy Douglas on 3/3/23.
//

import UIKit

class PlanetCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    func update(with planet: Planet) {
        imageView.image = planet.planetImage
        nameLabel.text = planet.name
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
