//
//  APODViewController.swift
//  SolarSystemSwift2
//
//  Created by Mindy Douglas on 3/9/23.
//

import UIKit

class APODViewController: UIViewController {
    
    let photoInfoController = PhotoInfoController()
    
    @IBOutlet weak var apodImage: UIImageView!
    @IBOutlet weak var imageTitle: UILabel!
    @IBOutlet weak var descriptionText: UITextView!
    @IBOutlet weak var copyrightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    func initialize() {
        imageTitle.text = ""
        apodImage.image = UIImage(systemName: "photo.on.rectangle")
        descriptionText.text = ""
        copyrightLabel.text = ""
        
        Task {
            do {
                let photoInfo = try await
                photoInfoController.fetchPhotoInfo()
                updatePhotoInfo(with: photoInfo)
            } catch {
                updateError(with: error)
            }
        }
    }
    
    func updatePhotoInfo(with photoInfo: PhotoInfo) {
        Task {
            do {
                let image = try await photoInfoController.fetchImage(from: photoInfo.url)
                imageTitle.text = photoInfo.title
                apodImage.image = image
                descriptionText.text = photoInfo.description
                copyrightLabel.text = photoInfo.copyright
            } catch {
                updateError(with: error)
            }
        }
    }
    
    func updateError(with error: Error) {
        title = "Error fetching photo"
        apodImage.image = UIImage(systemName: "exclamationmark.octagon")
        descriptionText.text = error.localizedDescription
        copyrightLabel.text = ""
    }
}
