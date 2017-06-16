//
//  SecondViewController.swift
//  Locattion
//
//  Created by Felwa Almeshal on 9/20/1438 AH.
//  Copyright © 1438 Felwa Almeshal. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
  
  var latitudeString = String()
   var longitudeString = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        latitudeLabel.text  = latitudeString
        longitudeLabel.text = longitudeString
        
        // Do any additional setup after loading the view.
    }

}
