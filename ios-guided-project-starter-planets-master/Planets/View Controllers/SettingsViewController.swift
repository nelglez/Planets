//
//  SettingsViewController.swift
//  Planets
//
//  Created by Nelson Gonzalez on 5/2/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var shouldShowPlutoSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        updateViews()
    }
    
    
    private func updateViews() {
        //TODO: update the switch based on saved date
        let userDefaults = UserDefaults.standard
        
        shouldShowPlutoSwitch.isOn = userDefaults.bool(forKey: .shouldShowPlutoKey)
        
        
        
    }

    @IBAction func plutoSwitchToggled(_ sender: UISwitch) {
        
        //TODO: Update the saved data using UserDefaults
        
        let userDefaults = UserDefaults.standard
        userDefaults.set(sender.isOn, forKey: .shouldShowPlutoKey) //saving it
    }
    
    @IBAction func doneButtonPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
}

extension String {
    static let shouldShowPlutoKey = "shouldShowPlutoKey"
}
