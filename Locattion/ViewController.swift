//
//  ViewController.swift
//  Locattion
//
//  Created by Felwa Almeshal on 9/19/1438 AH.
//  Copyright © 1438 Felwa Almeshal. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController , CLLocationManagerDelegate{
    
    
    var locManager = CLLocationManager()
    var currentLocation: CLLocation!
    var latitude = "0"
    var longitude = "0"
    
    @IBOutlet weak var map: MKMapView!
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.01 ,0.01 )
        let myLocation :CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(myLocation, span)
        
        
        latitude = "\(location.coordinate.latitude)"
        longitude = "\(location.coordinate.longitude)"

        map.setRegion(region, animated: true)
        self.map.showsUserLocation = true
    }
    
    
    @IBAction func resultButton(_ sender: UIBarButtonItem) {
        
        performSegue(withIdentifier: "segue", sender: self)
    }
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
          locManager.delegate = self
          locManager.desiredAccuracy = kCLLocationAccuracyBest
          locManager.requestWhenInUseAuthorization()
          locManager.startUpdatingLocation()
    }

  
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondController = segue.destination as! SecondViewController
        secondController.latitudeString = latitude
        secondController.longitudeString = longitude
        
        
    }
}

