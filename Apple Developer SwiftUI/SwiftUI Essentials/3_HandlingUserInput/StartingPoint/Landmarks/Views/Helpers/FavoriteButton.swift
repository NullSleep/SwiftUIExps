//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Carlos Arenas on 10.03.23.
//  Copyright © 2023 Apple. All rights reserved.
//

import SwiftUI

struct FavoriteButton: View {
    // LEITFADEN: Because you use a binding, changes made inside this view propagate back to the data source.
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
