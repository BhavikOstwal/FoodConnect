//
//  MapView.swift
//  FoodConnect
//
//  Created by Bhavik Ostwal on 10/02/24.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    let coordinateRegion: MKCoordinateRegion

    init(coordinateRegion: MKCoordinateRegion) {
        self.coordinateRegion = coordinateRegion
    }

    class Coordinator: NSObject, MKMapViewDelegate {
        // You can add delegate methods if needed
    }

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.setRegion(coordinateRegion, animated: false)
        mapView.delegate = context.coordinator
        return mapView
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        // You can perform additional updates here if needed
    }
}

struct MapViewContentView: View {
    var body: some View {
        VStack {
            Text("Map View Screen")
                .font(.title)

            MapView(coordinateRegion: MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
            ))
            .frame(height: 200)
            .cornerRadius(8)

            // ... rest of your content
        }
        .padding()
        .navigationTitle("Map View")
    }
}

struct MapViewContentView_Previews: PreviewProvider {
    static var previews: some View {
        MapViewContentView()
    }
}

