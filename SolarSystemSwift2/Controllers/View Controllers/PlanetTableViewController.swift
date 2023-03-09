//
//  PlanetTableViewController.swift
//  SolarSystemSwift2
//
//  Created by Mindy Douglas on 3/1/23.
//

import UIKit

class PlanetTableViewController: UITableViewController {
   
    var planets = [Planet]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        planets = Planet.loadPlanets()
    }
   
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return planets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 1 dequeue cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlanetCell", for: indexPath) as! PlanetCell
        
        // 2 fetch model object to display
        let planet = planets[indexPath.row]
        
        // 3 configure cell
        cell.update(with: planet)
        
        // 4 return cell
        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //get planet
        let planet = planets[indexPath.row]
        
        performSegue(withIdentifier: "planetSegue", sender: planet)
        
        tableView.deselectRow(at: indexPath, animated: true)
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
