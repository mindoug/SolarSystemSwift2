//
//  PlanetCollectionViewController.swift
//  SolarSystemSwift2
//
//  Created by Mindy Douglas on 3/7/23.
//

import UIKit

class PlanetCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var planets = [Planet]()
   
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        planets = Planet.loadPlanets()
        collectionView.register(UINib(nibName: "PlanetCollectionCell", bundle: nil), forCellWithReuseIdentifier: "planetCollectionCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        planets.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // 1 dequeue reusable cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "planetCollectionCell", for: indexPath) as! PlanetCollectionCell
        
        // 2 fetch model object
        let planet = planets[indexPath.row]
        
        // 3 configure cell
        cell.update(with: planet)
        
        // 4 return cell
        return cell
    }
    
    
    // MARK: - Collection view delegate
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //get planet
        let planet = planets[indexPath.item]
        
        performSegue(withIdentifier: "collectionSegue", sender: planet)
        
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    
    // prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as?
            PlanetDetailViewController,
           let sender = sender as? Planet {
            destination.planet = sender
        }
    }
}
