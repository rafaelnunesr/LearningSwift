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
    var pin: UIImageView = UIImageView()
    var addressLabel: UILabel = UILabel()
    var previousLocation: CLLocation?
    
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
        self.setupPin()
        self.setupAddressLabel()
        self.addDelegates()
    }
    
    private func addSubviews() {
        self.view.addSubview(self.mapView)
        self.view.addSubview(self.pin)
        self.view.addSubview(self.addressLabel)
    }
    
    private func addDelegates() {
        self.mapView.delegate = self
    }
    
    private func setupMapView() {
        addConstrainstsMapView()
    }
    
    private func setupPin() {
        addConstrainstsPin()
        self.pin.image = UIImage(named: "pin")
    }
    
    private func setupAddressLabel() {
        addConstraintsAddressLabel()
        self.addressLabel.backgroundColor = .white
        self.addressLabel.textAlignment = .center
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
            self.startTrackingUserLocation()
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
    
    func startTrackingUserLocation() {
        self.mapView.showsUserLocation = true
        self.centerViewOnUserLocation()
        self.locationManager.startUpdatingLocation()
        self.previousLocation = getCenterLocation(for: mapView)
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
    
    func getCenterLocation(for mapView: MKMapView) -> CLLocation {
        let latitude = mapView.centerCoordinate.latitude
        let longitude = mapView.centerCoordinate.longitude
        
        return CLLocation(latitude: latitude, longitude: longitude)
    }

}

extension MapScreen {
    
    func addConstrainstsMapView() {
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(mapView.topAnchor.constraint(equalTo: view.topAnchor))
        constraints.append(mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor))
        constraints.append(mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor))
        constraints.append(mapView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func addConstrainstsPin() {
        
        let pinSize: CGFloat = 30
        
        pin.translatesAutoresizingMaskIntoConstraints = false
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(pin.centerXAnchor.constraint(equalTo: mapView.centerXAnchor))
        constraints.append(pin.centerYAnchor.constraint(equalTo: mapView.centerYAnchor))
        constraints.append(pin.heightAnchor.constraint(equalToConstant: pinSize))
        constraints.append(pin.widthAnchor.constraint(equalToConstant: pinSize))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func addConstraintsAddressLabel() {
        addressLabel.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(addressLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor))
        constraints.append(addressLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor))
        constraints.append(addressLabel.bottomAnchor.constraint(equalTo: mapView.bottomAnchor))
        constraints.append(addressLabel.heightAnchor.constraint(equalToConstant: 50))
        
        NSLayoutConstraint.activate(constraints)
    }
}

extension MapScreen: CLLocationManagerDelegate {
    
    /*
    // update user location changed
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let region = MKCoordinateRegion.init(center: center, latitudinalMeters: regionInMeters, longitudinalMeters: regionInMeters)
        self.mapView.setRegion(region, animated: true)
    }
    
 */
    // Check if user has changed authorization (settings iPhone)
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        self.checkLocationAuthorization()
    }
}

extension MapScreen: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
        let center = getCenterLocation(for: mapView)
        let geoCoder = CLGeocoder()
        
        guard let previousLocation = self.previousLocation else { return }
        
        guard center.distance(from: previousLocation) > 50 else { return }
        self.previousLocation = center
        
        geoCoder.reverseGeocodeLocation(center) { [weak self] (placemarks, error) in
            guard let self = self else { return }
            
            if let _ = error {
                // TODO: show alert informing the user
                return
            }
            
            guard let placemark = placemarks?.first else {
                // TODO: Shoe alert informing the user
                return
            }
            
            let streetNumber = placemark.subThoroughfare ?? ""
            let streetName = placemark.thoroughfare ?? ""
            
            DispatchQueue.main.async {
                self.addressLabel.text = "\(streetNumber) \(streetName)"
            }
        }
    }
}
