//
//  MapViewController.swift
//  MyLocations
//
//  Created by 孙竞 on 15/2/16.
//  Copyright (c) 2015年 Razeware. All rights reserved.
//

import UIKit
import MapKit
import CoreData

class MapViewController: UIViewController {

  @IBOutlet weak var mapView: MKMapView!
  
  var managedObjectContext: NSManagedObjectContext!
  
  @IBAction func showUser() {
    let region = MKCoordinateRegionMakeWithDistance(mapView.userLocation.coordinate, 1000, 1000)
    mapView.setRegion(mapView.regionThatFits(region), animated: true)
  }
  
  @IBAction func showLocations() {
    
  }
}

extension MapViewController: MKMapViewDelegate {
  
}
