//
//  LocationViewController.swift
//  Trailing Past
//
//  Created by Adam Hernandez on 11/28/15.
//  Copyright © 2015 Adam. All rights reserved.
//

import UIKit
import CoreLocation

class LocationViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet var long: UILabel!
    @IBOutlet var lat: UILabel!
    
    lazy var locationManager: CLLocationManager = {
        var _locationManager = CLLocationManager()
        _locationManager.delegate = self
        _locationManager.desiredAccuracy = kCLLocationAccuracyBest
        _locationManager.activityType = .Fitness
        
        //Movement Threshold
        _locationManager.distanceFilter = 10.0 //10 Meter!
        
        return _locationManager
    }()
    lazy var locations = [CLLocation]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestAlwaysAuthorization()
        var currentLocation: CLLocation!
        currentLocation = locationManager.location
        //long.text = String(currentLocation.coordinate.longitude)
        //lat.text = String(currentLocation.coordinate.latitude)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return [UIInterfaceOrientationMask.Portrait]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}