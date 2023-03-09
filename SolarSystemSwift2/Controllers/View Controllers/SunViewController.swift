//
//  SunViewController.swift
//  SolarSystemSwift2
//
//  Created by Mindy Douglas on 2/8/23.
//

import UIKit

class SunViewController: UIViewController {
    
    let sunInfo = Sun().info
    let moonInfo = Moon().info
    
    @IBOutlet weak var howFarLabel: UILabel!
    @IBOutlet weak var distanceSlider: UISlider!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var lightSwitch: UISwitch!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var milesOrKilometersLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    func initialize() {
        showSun()
    }
    
    func showSun() {
        textView.text = sunInfo
        imageView.image = UIImage(named: "sun")
        milesOrKilometersLabel.text = "Million MILES"
        distanceLabel.text = "How far is the Earth from the SUN?"
        textView.text = sunInfo
        textView.textColor = .black
        textView.backgroundColor = .clear
        view.backgroundColor = UIColor(named: "Gold") // to use system color .sytemYellow
        lightSwitch.backgroundColor = .clear
        lightSwitch.onTintColor = UIColor(named: "Orange")
        lightSwitch.thumbTintColor = .white
        distanceSlider.maximumValue = 93
        distanceSlider.minimumValue = 0
        distanceSlider.thumbTintColor = .white
        distanceSlider.tintColor = UIColor(named: "Orange")
        milesOrKilometersLabel.backgroundColor = .clear
        milesOrKilometersLabel.textColor = .black
        distanceLabel.textColor = .black
        distanceLabel.text = String(distanceSlider.value)
    }
    
    func showMoon() {
        textView.text = moonInfo
        imageView.image = UIImage(named: "moon")
        milesOrKilometersLabel.text = "THOUSAND miles "
        distanceLabel.text = "How far is the Earth from the MOON?"
        textView.textColor = .white
        textView.backgroundColor = .clear
        view.backgroundColor = .black
        lightSwitch.backgroundColor = .clear
        lightSwitch.onTintColor = UIColor(named: "Orange")
        lightSwitch.thumbTintColor = .white
        distanceSlider.maximumValue = 238.855
        distanceSlider.minimumValue = 0
        distanceSlider.thumbTintColor = .white
        distanceSlider.tintColor = .systemGray
        milesOrKilometersLabel.backgroundColor = .clear
        milesOrKilometersLabel.textColor = .white
        distanceLabel.textColor = .white
        distanceLabel.text = String(distanceSlider.value)
    }
    
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        distanceLabel.text = String(sender.value)
    }
    
    @IBAction func lightSwitchToggled(_ sender: UISwitch) {
        if lightSwitch.isOn {
            showSun()
        } else {
            showMoon()
        }
    }

}
