//
//  NonClusteringMKMarkerAnnotationView.swift
//  preventClustering
//
//  Created by Colby Hill on 8/13/20.
//  Copyright © 2020 randomorg. All rights reserved.
//
import MapKit
import UIKit

class NonClusteringMKMarkerAnnotationView: MKMarkerAnnotationView {
    override var annotation: MKAnnotation? {
        willSet {
            displayPriority = MKFeatureDisplayPriority.required
        }
    }
}
