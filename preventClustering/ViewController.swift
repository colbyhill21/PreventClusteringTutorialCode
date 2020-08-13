//
//  ViewController.swift
//  preventClustering
//
//  Created by Colby Hill on 8/13/20.
//  Copyright © 2020 randomorg. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        self.placePins()
    }

    func placePins() {
        let center = CLLocationCoordinate2D(latitude: 37.791066, longitude: -122.398183)
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: center, span: span)
        mapView.setRegion(region, animated: true)
        
        let googleAnnotation = MKPointAnnotation()
        googleAnnotation.coordinate = CLLocationCoordinate2D(latitude: 37.789911, longitude: -122.390098)
        googleAnnotation.title = "Google SF Office"
        self.mapView.addAnnotation(googleAnnotation)

        let microsoftAnnotation = MKPointAnnotation()
        microsoftAnnotation.coordinate = CLLocationCoordinate2D(latitude: 37.792146, longitude: -122.403962)
        microsoftAnnotation.title = "Microsoft SF Office"
        self.mapView.addAnnotation(microsoftAnnotation)

        let amazonAnnotation = MKPointAnnotation()
        amazonAnnotation.coordinate = CLLocationCoordinate2D(latitude: 37.791366, longitude: -122.392970)
        amazonAnnotation.title = "Amazon SF Office"
        self.mapView.addAnnotation(amazonAnnotation)
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        return NonClusteringMKMarkerAnnotationView(annotation: annotation, reuseIdentifier: "MyMarker")
    }

}
