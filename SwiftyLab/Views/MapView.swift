//
//  MapView.swift
//  Swifty Lab
//
//  Created by Usama Azam on 24/12/2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinates: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinates,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
    
}

#Preview {
    MapView(coordinates: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
