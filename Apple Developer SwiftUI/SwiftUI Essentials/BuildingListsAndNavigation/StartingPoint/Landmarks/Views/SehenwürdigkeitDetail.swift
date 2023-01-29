//
//  SehenwürdigkeitDetail.swift
//  Landmarks
//
//  Created by Carlos Arenas on 29.01.23.
//  Copyright © 2023 Apple. All rights reserved.
//

import SwiftUI

struct SehenwürdigkeitDetail: View {
    var body: some View {
      VStack {
          MapView()
              .ignoresSafeArea(edges: .top)
              .frame(height: 300)

          CircleImage()
              .offset(y: -130)
              .padding(.bottom, -130)

          VStack(alignment: .leading) {
              Text("München")
                  .font(.title)

              HStack {
                  Text("Bavaria")
                  Spacer()
                  Text("Deutschland")
              }
              .font(.subheadline)
              .foregroundColor(.secondary)

              Divider()

              Text("About München")
                  .font(.title2)
              Text("Descriptive text goes here.")
          }
          .padding()

          Spacer()
      }
    }
}

struct SehenwürdigkeitDetail_Previews: PreviewProvider {
    static var previews: some View {
      SehenwürdigkeitDetail()
    }
}
