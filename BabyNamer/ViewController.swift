//
//  ViewController.swift
//  BabyNamer
//
//  Created by Matt Bonness on 1/24/17.
//  Copyright © 2017 Motorola Solutions Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // TODO - connect views to outlets
    @IBOutlet weak var noNameImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderSegment: UISegmentedControl!
    let defaultname = "No👼🏽Name"
    let genders = [Gender.Male, Gender.Female, Gender.Unknown]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // code here to hide nameLabel
        nameLabel.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // TODO - connect button to action
    @IBAction func generateName(sender: AnyObject) {
        // TODO: call factory class to generate name
        // TODO: show name in label
        let babyNameFactory = BabyNameFactory()
        if let babyname = babyNameFactory.generateNameForGender(gender: genders[genderSegment.selectedSegmentIndex]) {
            nameLabel.text = babyname.name
        } else {
            nameLabel.text = defaultname
        }
        nameLabel.isHidden = false
        nameLabel.adjustsFontSizeToFitWidth = true
        // TODO: hide the "no name" image
        noNameImage?.isHidden = true
    }
    
    @IBAction func genderChanged(_ sender: Any) {
        // In case: name generated, then switch to other gender
        nameLabel.isHidden = true
        noNameImage.isHidden = false
    }
}

