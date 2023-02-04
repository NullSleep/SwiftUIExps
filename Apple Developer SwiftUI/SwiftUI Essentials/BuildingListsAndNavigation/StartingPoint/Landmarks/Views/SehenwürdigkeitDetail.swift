//
//  SehenwürdigkeitDetail.swift
//  Landmarks
//
//  Created by Carlos Arenas on 29.01.23.
//  Copyright © 2023 Apple. All rights reserved.
//

import SwiftUI

struct SehenwürdigkeitDetail: View {
    var sehenswürdigkeit: Sehenswürdigkeit
    
    var body: some View {
      ScrollView {
          MapView(coordinate: sehenswürdigkeit.ortsKoordinate)
              .ignoresSafeArea(edges: .top)
              .frame(height: 300)

          CircleImage(image: sehenswürdigkeit.bild)
              .offset(y: -130)
              .padding(.bottom, -130)

          VStack(alignment: .leading) {
              Text(sehenswürdigkeit.name)
                  .font(.title)

              HStack {
                  Text(sehenswürdigkeit.park)
                  Spacer()
                  Text(sehenswürdigkeit.state)
              }
              .font(.subheadline)
              .foregroundColor(.secondary)

              Divider()

              Text("About \(sehenswürdigkeit.name)")
                  .font(.title2)
              Text(sehenswürdigkeit.description)
          }
          .padding()
      }
      .navigationTitle(sehenswürdigkeit.name)
      .navigationBarTitleDisplayMode(.inline)
    }
}

struct SehenwürdigkeitDetail_Previews: PreviewProvider {
    static var previews: some View {
      SehenwürdigkeitDetail(sehenswürdigkeit: sehenswürdigkeiten[0])
    }
}
