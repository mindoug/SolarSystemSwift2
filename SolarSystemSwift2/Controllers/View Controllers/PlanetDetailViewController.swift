//
//  PlanetDetailViewController.swift
//  SolarSystemSwift2
//
//  Created by Mindy Douglas on 3/8/23.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    
    var planet: Planet!
    var name = ""
    var image = UIImage()
    var planetDescription = ""
    var planetFact = ""

    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var planetDescriptionTextView: UITextView!
    @IBOutlet weak var planetFactsTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            initialize()
    }
    
    func initialize() {
        planetImage.image = planet.planetImage
        planetNameLabel.text = planet.name
        planetDescriptionTextView.text = planet.description
        planetFactsTextView.text = planet.fact
    }
    

}
