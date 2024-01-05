//
//  TestImage.swift
//  ImageFinder
//
//  Created by Carlos Arenas Sabogal on 14.09.23.
//

import Foundation
import SwiftUI

struct TestImage: Identifiable, Codable {
    var id: String
    var name: String
    
    var image: Image {
        Image("base_img")
    }

    static let sampleImages = [
        TestImage(id: "dg", name: "Dogs"),
        TestImage(id: "ca", name: "Cats"),
        TestImage(id: "co", name: "Cows"),
        TestImage(id: "ho", name: "Horses"),
        TestImage(id: "li", name: "Lions"),
    ]
}
