//
//  MapView.swift
//  100SwiftUI-1
//
//  Created by terry on 2020/8/2.
//  Copyright © 2020 terry. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let coordinate = CLLocationCoordinate2D(latitude: 38.92, longitude: 121.62)
        let span = MKCoordinateSpan(latitudeDelta: 2, longitudeDelta:2)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
