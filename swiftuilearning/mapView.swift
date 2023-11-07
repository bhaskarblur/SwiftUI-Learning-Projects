//
//  mapView.swift
//  swiftuilearning
//
//  Created by SoundWave2847 on 07/11/23.
//

import SwiftUI
import UIKit
import Foundation
import MapKit

struct mapView: UIViewRepresentable {
    
    var zoomX = 0.2
    var zoomY = 0.2
    var coordinates = CLLocationCoordinate2D()
    typealias UiViewType = UIView
    func makeUIView(context: Context) ->  UIView {
        let view = UIView()
        
        let coordinate = coordinates
        let map = MKMapView()
        
        view.addSubview(map)
        map.translatesAutoresizingMaskIntoConstraints = false
        
        map.setRegion(MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: zoomX, longitudeDelta: zoomY)), animated: true)
        NSLayoutConstraint.activate([
            map.widthAnchor.constraint(equalTo: view.widthAnchor),
            map.heightAnchor.constraint(equalTo: view.heightAnchor),
            map.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            map.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        let pin = MKPointAnnotation()
        pin.coordinate = coordinate;
        map.addAnnotation(pin)
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

