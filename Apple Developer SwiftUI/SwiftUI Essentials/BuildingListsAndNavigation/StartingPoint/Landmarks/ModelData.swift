//
//  ModelData.swift
//  Landmarks
//
//  Created by Carlos Arenas on 20.01.23.
//  Copyright © 2023 Apple. All rights reserved.
//

import Foundation

// LEITFADEN: Method that fetches JSON data with a given name from the app’s main bundle. The load method relies on the return type’s conformance to the Decodable protocol, which is one component of the Codable protocol.

func load<T: Decodable>(_ filename: String) -> T {
  let data: Data
  
  guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
  else {
    fatalError("Couldn't find \(filename) in the main bundle.")
  }
  
  do {
    data = try Data(contentsOf: file)
  } catch {
    fatalError("Couldn't load \(filename) frin the main bundle:\n\(error)")
  }
  
  do {
    let decoder = JSONDecoder()
    return try decoder.decode(T.self, from: data)
  } catch {
    fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
  }
}
