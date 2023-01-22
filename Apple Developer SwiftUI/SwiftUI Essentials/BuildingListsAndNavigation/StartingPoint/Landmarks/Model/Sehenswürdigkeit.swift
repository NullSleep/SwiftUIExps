//
//  Wahrzeichen.swift
//  Landmarks
//
//  Created by Carlos Arenas on 16.01.23.
//  Copyright © 2023 Apple. All rights reserved.
//

import Foundation
import SwiftUI
import CoreLocation

// LEITFADEN: Define a Landmark (Wahrzeichen) structure with a few properties matching names of some of the keys in the landmarkData.json data file.
// LEITFADEN: Adding Codable conformance makes it easier to move data between the structure and a data file. You’ll rely on the Decodable component of the Codable protocol later in this section to read data from file.

// Sehenswürdigkeit = Punto destacado = Landmark
struct Sehenswürdigkeit: Hashable, Codable {
  var id: Int
  var name: String
  var park: String
  var state: String
  var description: String
  
  // ICH: It must match the data source (json.file) properties
  private var imageName: String
  
  var bild: Image {
    Image(imageName)
  }
  
  // ICH: Like imageName this is also a property that has to be mapped like the data source
  private var coordinates: Koordinaten
  
  struct Koordinaten: Hashable, Codable {
    var longitude: Double
    var latitude: Double
  }
  
  // LEITFADEN: Compute a locationCoordinate property that’s useful for interacting with the MapKit framework.
  var ortsKoordinate: CLLocationCoordinate2D {
    CLLocationCoordinate2D(latitude: coordinates.longitude, longitude: coordinates.latitude)
  }
}
