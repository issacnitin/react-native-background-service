//
//  LocationService.swift
//  RNReactNativeBackgroundService
//
//  Created by Nitin Issac Joy on 07/04/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation
import CoreLocation

@objc(LocationService)
class LocationService: NSObject {
    let locationManager = CLLocationManager()
    
    @objc(requestPermission)
    func requestPermission() {
        locationManager.requestAlwaysAuthorization()
    }
    
    @objc(startLocationTracking)
    func startLocationTracking() {
        locationManager.startMonitoringVisits()
        locationManager.delegate = self
    }
}


extension LocationService: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didVisit visit: CLVisit) {
        // create CLLocation from the coordinates of CLVisit
        let clLocation = CLLocation(latitude: visit.coordinate.latitude, longitude: visit.coordinate.longitude)
        
    }
    
    func newVisitReceived(_ visit: CLVisit, description: String) {
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {
            return
        }
    }
}
