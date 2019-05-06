//
//  PlanetCollectionViewCell.swift
//  Planets
//
//  Created by Nelson Gonzalez on 5/2/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var planetNameLabel: UILabel!
    
    
    var planets: Planet? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let planets = planets else { return }
        
        planetNameLabel.text = planets.name
        planetImageView.image = planets.image
    }
}
