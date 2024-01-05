//
//  PixbayImage.swift
//  ImageFinder
//
//  Created by Carlos Arenas Sabogal on 14.09.23.
//

import Foundation
import SwiftUI

struct PixbayImage: Codable {
    let id: Int
    let pageURL: String?
    let type: String?
    let tags: String?
    let previewURL: String?
    let previewWidth: Int?
    let previewHeight: Int?
    let webformatURL: String?
    let webformatWidth: Int?
    let webformatHeight: Int?
    let largeImageURL: String?
    let fullHDURL: String?
    let imageURL: String?
    let imageWidth: Int?
    let imageHeight: Int?
    let imageSize: Double?
    let views: Int?
    let downloads: Int?
    let likes: Int?
    let comments: Int?
    let user_id: Int?
    let user: String?
    let userImageURL: String?
}

struct PixbayResponse: Codable {
    let total: Int
    let totalHits: Int
    let hits: [PixbayImage]
}
