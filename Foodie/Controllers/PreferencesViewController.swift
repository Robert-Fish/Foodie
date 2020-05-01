//
//  PreferencesViewController.swift
//  Foodie
//
//  Created by Robert Fish on 28/4/20.
//  Copyright © 2020 Robert Fish. All rights reserved.
//

import UIKit

class PreferencesViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var currentDistanceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentDistanceLabel.text = "\(Int(slider.value))"
    }
    @IBAction func locationDistanceChanged(_ sender: Any) {
        currentDistanceLabel.text = "\(Int(slider.value))"
        
    }
    
}
