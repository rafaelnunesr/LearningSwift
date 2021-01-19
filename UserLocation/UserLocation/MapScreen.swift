//
//  MapScreen.swift
//  UserLocation
//
//  Created by Rafael Nunes Rios on 1/18/21.
//

import UIKit
import MapKit

// Get user Location
import CoreLocation


class MapScreen: UIViewController {

    var mapView: MKMapView = MKMapView()
    
    let locationManager = CLLocationManager()
    let regionInMeters: Double = 1000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        self.checkLocationServices()
    }
    
    func setup() {
        self.addSubviews()
        self.setupMapView()
        self.addDelegates()
    }
    
    private func addSubviews() {
        self.view.addSubview(self.mapView)
    }
    
    private func addDelegates() {
        self.mapView.delegate = self
    }
    
    private func setupMapView() {
        addConstrainstsMapView()
    }
    
    func checkLocationServices() {
        if CLLocationManager.locationServicesEnabled() {
            self.setupLocationManager()
            self.checkLocationAuthorization()
        }else {
            // show alert letting the user know they have to turn this on
        }
    }
    
    // check user authorization
    func checkLocationAuthorization() {
        switch CLLocationManager.authorizationStatus() {
        // only when the app is open
        case .authorizedWhenInUse:
            // Need to setup on plist file
            self.mapView.showsUserLocation = true
            self.centerViewOnUserLocation()
            self.locationManager.startUpdatingLocation()
            break
        case .denied:
            // Once the user denied, we can't ask a new permission, the user needs to enable location on settings
            
            //Show alert instructing them thow to turn on permissions
            break
        case .notDetermined:
            // if it's not determined, we ask for permission
            self.locationManager.requestWhenInUseAuthorization()
            break
        case .restricted:
            // Show an alert letting them know what's up
            // The user cannot change this app’s status, possibly due to active restrictions such as parental controls being in place.
            break
        // uses location even when the app is running in the background
        case .authorizedAlways:
            break
        }
    }
    
    func setupLocationManager() {
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    func centerViewOnUserLocation() {
        if let location = self.locationManager.location?.coordinate{
            let region = MKCoordinateRegion.init(center: location, latitudinalMeters: self.regionInMeters, longitudinalMeters: self.regionInMeters)
            self.mapView.setRegion(region, animated: true)
        }
    }

}

extension MapScreen {
    
    func addConstrainstsMapView() {
        
        self.mapView.translatesAutoresizingMaskIntoConstraints = false
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(self.mapView.topAnchor.constraint(equalTo: self.view.topAnchor))
        constraints.append(self.mapView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor))
        constraints.append(self.mapView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor))
        constraints.append(self.mapView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor))
        
        NSLayoutConstraint.activate(constraints)
    }
}

extension MapScreen: MKMapViewDelegate {
    
}

extension MapScreen: CLLocationManagerDelegate {
    
    // update user location changed
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let region = MKCoordinateRegion.init(center: center, latitudinalMeters: regionInMeters, longitudinalMeters: regionInMeters)
        self.mapView.setRegion(region, animated: true)
    }
    
    // Check if user has changed authorization (settings iPhone)
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        self.checkLocationAuthorization()
    }
}
