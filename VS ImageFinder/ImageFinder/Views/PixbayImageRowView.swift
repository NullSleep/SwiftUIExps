//
//  PixbayImageRowView.swift
//  ImageFinder
//
//  Created by Carlos Arenas Sabogal on 14.09.23.
//

import SwiftUI

struct PixbayImageRowView: View {
    var pixbayImage: PixbayImage
    
    var body: some View {
        VStack {
            if let imageURL = pixbayImage.imageURL ?? pixbayImage.largeImageURL,
               let url = URL(string: imageURL) {
                AsyncImage(url: url) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    case .failure:
                        Image(systemName: "base_img")
                    @unknown default:
                        EmptyView()
                    }
                }
                .frame(width: 245, height: 141)
                Text(pixbayImage.tags ?? "")
                
                Spacer()
            }
        }
    }
}

struct CountryView_Previews: PreviewProvider {
    static var previews: some View {
        PixbayImageRowView(pixbayImage: PixbayImage(id: 0, pageURL: "", type: "", tags: "", previewURL: "", previewWidth: 0, previewHeight: 0, webformatURL: "", webformatWidth: 0, webformatHeight: 0, largeImageURL: "", fullHDURL: "", imageURL: "", imageWidth: 0, imageHeight: 0, imageSize: 0, views: 0, downloads: 0, likes: 0, comments: 0, user_id: 0, user: "", userImageURL: ""))
    }
}
