//
//  mapViewImpl.swift
//  swiftuilearning
//
//  Created by SoundWave2847 on 07/11/23.
//

import SwiftUI
import CoreLocation
struct mapViewImpl: View {
    var body: some View {
        
        NavigationView {
            VStack {
                GeometryReader { proxy in
                    mapView(zoomX: 0.01, zoomY: 0.01,
                            coordinates : CLLocationCoordinate2D(latitude: 30.919279
                                , longitude: 75.831849)).frame(height: proxy.size.height, alignment: .center)
                }
            }.navigationTitle("Map")
        }
    }
}

#Preview {
    mapViewImpl()
}
