//
//  ViewController.swift
//  SolarSystemSwift2
//
//  Created by Mindy Douglas on 2/1/23.
//

import UIKit

class ViewController: UIViewController {
    
    var quote = Quote()
    
    @IBOutlet weak var quoteTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       initialize()
    }
    
    func initialize() {
        quoteTextView.text = self.quote.randomQuote
        self.navigationController?.navigationBar.tintColor = .white
    }
    
}

