//
//  PixbayImageModel.swift
//  ImageFinder
//
//  Created by Carlos Arenas Sabogal on 14.09.23.
//

import Foundation

@MainActor
class PixbayImageModel: ObservableObject {
//    @Published var pixbayImages = TestImage.sampleImages
//    @Published var pixbayImages: [TestImage] = []
    @Published var pixbayImages: [PixbayImage] = []
    
    func search(term: String) async {
        let url = URL(string: "https://pixabay.com/api/?key=12596600-5c4b5545376298c9739a2a2ce&q=\(term)&image_type=photo")!
        let urlSession = URLSession.shared
        do {
            let (data, response) = try await urlSession.data(from: url)
//            self.pixbayImages = try JSONDecoder().decode([PixbayImage].self, from: data)
            let pixbayResponse = try JSONDecoder().decode(PixbayResponse.self, from: data)
            self.pixbayImages = pixbayResponse.hits
            print("\(response)")
        }
        catch {
            // Error handling in case the data couldn't be loaded
            debugPrint("Error loading \(url): \(String(describing: error))")
        }
    }
}
