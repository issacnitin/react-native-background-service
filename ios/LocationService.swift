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
class LocationService: RCTEventEmitter {
    
    let locManager = CLLocationManager()
    
    // we need to override this method and
    // return an array of event names that we can listen to
    override func supportedEvents() -> [String]! {
        return ["LocationListener"]
    }
    
    @objc
    func requestPermission() {
        locManager.requestAlwaysAuthorization()
    }
    
    @objc
    func startLocationTracking() {
        locManager.startMonitoringVisits()
        locManager.delegate = self
    }
    
}

extension LocationService: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didVisit visit: CLVisit) {
        sendEvent(withName: "LocationListener", body: ["locationInfo": visit])
    }
    
    func newVisitReceived(_ visit: CLVisit, description: String) {
        sendEvent(withName: "LocationListener", body: ["locationInfo": visit])
    }
}
