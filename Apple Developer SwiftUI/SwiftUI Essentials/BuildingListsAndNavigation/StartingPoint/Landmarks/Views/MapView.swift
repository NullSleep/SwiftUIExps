/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view that presents a map.
*/

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
//    @State private var region = MKCoordinateRegion(
//        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
//        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
//    )
    @State private var region = MKCoordinateRegion()

    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
    
    // LEITFADEN: Method that updates the region based on a coordinate value.
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            #warning("Here is the source of the crash")
            #error("Coordinate set in body is causing the crash")
//            center: coordinate,
            // TEMP FIX WHILE THE COMMENTED LINE ABOVE GETS FIXED
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate:  CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
