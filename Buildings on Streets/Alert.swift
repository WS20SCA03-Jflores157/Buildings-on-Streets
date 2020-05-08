//
//  Alert.swift
//  Buildings on Streets
//
//  Created by Jeffrey  on 5/7/20.
//  Copyright © 2020 BMCC. All rights reserved.
//

import Foundation
import UIKit

struct Alert{
    //Alert View displayed for when user inputs letters or street not on streets Array
    func alertUser(this alertTitle: String, because message: String, actionTitle: String,on view: UIViewController){
           let presentedVC = view
           let alert: UIAlertController = UIAlertController(title: alertTitle, message: message, preferredStyle: .alert)
           let action: UIAlertAction = UIAlertAction(title: actionTitle, style: .cancel, handler: nil)
           alert.addAction(action)
           
           presentedVC.present(alert, animated: true, completion: nil)
       }
    
}
