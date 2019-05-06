//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by Nelson Gonzalez on 5/2/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetsCollectionViewController: UICollectionViewController {
    
    let planetController = PlanetController()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        collectionView.reloadData()
    }
    

    // MARK: UICollectionViewDataSource


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return planetController.planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlanetCell", for: indexPath) as! PlanetCollectionViewCell
    
        let planets = planetController.planets[indexPath.item]
        
        cell.planets = planets
        
    
        return cell
    }



}
