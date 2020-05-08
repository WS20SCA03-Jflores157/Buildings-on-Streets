//
//  ViewController.swift
//  Buildings on Streets
//
//  Created by Jeffrey  on 5/7/20.
//  Copyright © 2020 BMCC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var nameStackView: UIStackView!
    
    let streets: [Int: [Building]] = [
        12: [
            Building(name: "The Strand",                image: "strand")
        ],
        
        14: [
            Building(name: "Zeckendorf Towers",         image: "zeckendorf"),
            Building(name: "The Con Ed Building",       image: "coned")
        ],
        
        23: [
            Building(name: "The Met Life Building",     image: "metlife")
        ],
        
        34: [
            Building(name: "The Javitz Center",         image: "javitz"),
            Building(name: "The Empire State Building", image: "empire")
        ],
        
        42: [
            Building(name: "Grand Central Terminal",    image: "gct"),
            Building(name: "The Chrysler Building",     image: "chrysler"),
            Building(name: "The United Nations",        image: "un"),
        ],
        
        72: [
            Building(name: "The Dakota",                image: "dakota")
        ],
        
        89: [
            Building(name: "The Guggenheim",            image: "guggenheim")
        ]
    ];
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        if let street: Int = Int(textField.text!) {
            if let arrayOfBuildings: [Building] = streets[street] {
               
                    
                    nameStackView.arrangedSubviews.forEach({$0.removeFromSuperview()})
                    
                    for building: Building in arrayOfBuildings {
                        let label: UILabel = UILabel();
                        label.backgroundColor = .yellow;
                        label.layer.borderWidth = 0.5;
                        label.textAlignment = .center;
                        label.font = .systemFont(ofSize: 22.0);
                        label.text = building.name
                        
                        let buildingImage: UIImageView = UIImageView()
                        buildingImage.layer.borderWidth = 0.5
                        buildingImage.image = UIImage(named: building.image)
                        
                        nameStackView.addArrangedSubview(buildingImage);
                        nameStackView.addArrangedSubview(label);
                    }
                    
                  
                
            } else {
                let alert: Alert = Alert()
                alert.alertUser(this: "Street not Found", because: "This street has no noteworthy buildings.", actionTitle: "OK", on: self)
               
            }
        }else{
            let alert: Alert = Alert()
            alert.alertUser(this: "Wrong Format", because: "Please enter a street number.", actionTitle: "OK", on: self)
        }
        
        
    }
    
    
}

