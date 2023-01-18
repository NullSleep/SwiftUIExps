//
//  Wahrzeichen.swift
//  Landmarks
//
//  Created by Carlos Arenas on 16.01.23.
//  Copyright © 2023 Apple. All rights reserved.
//

import Foundation
import SwiftUI

// GUIDE: Define a Landmark (Wahrzeichen) structure with a few properties matching names of some of the keys in the landmarkData.json data file.
// Adding Codable conformance makes it easier to move data between the structure and a data file. You’ll rely on the Decodable component of the Codable protocol later in this section to read data from file.

// Wahrzeichen = Punto destacado = Landmark 
struct Wahrzeichen: Hashable, Codable {
  var id: Int
  var name: String
  var park: String
  var state: String
  var description: String
  
  private var bildName: String
  var bild: Image {
    Image(bildName)
  }
}
