//
//  landinScreen.swift
//  CareXpress
//
//  Created by Tishaun Bristol on 3/10/18.
//  Copyright © 2018 Bristol Developers. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class landinScreen: UIViewController , CLLocationManagerDelegate{

    @IBOutlet var mapView: MKMapView!
    
    let locationManager  = CLLocationManager ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations[0]
        let center = location.coordinate
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region  = MKCoordinateRegion(center: center, span: span)
        mapView.setRegion(region, animated: true)
    }
   
   

}
