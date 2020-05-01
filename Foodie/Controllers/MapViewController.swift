//
//  MapViewController.swift
//  Foodie
//
//  Created by Robert Fish on 28/4/20.
//  Copyright © 2020 Robert Fish. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)

        mapView.centerToLocation(initialLocation)
        let london = MKPointAnnotation()
        london.title = "Honolulu"
        london.coordinate = CLLocationCoordinate2D(latitude: 21.282778, longitude: -157.829444)
        mapView.addAnnotation(london)
        

    }


}

private extension MKMapView {
  func centerToLocation(
    _ location: CLLocation,
    regionRadius: CLLocationDistance = 1000
  ) {
    let coordinateRegion = MKCoordinateRegion(
      center: location.coordinate,
      latitudinalMeters: regionRadius,
      longitudinalMeters: regionRadius)
    setRegion(coordinateRegion, animated: true)
  }
}
