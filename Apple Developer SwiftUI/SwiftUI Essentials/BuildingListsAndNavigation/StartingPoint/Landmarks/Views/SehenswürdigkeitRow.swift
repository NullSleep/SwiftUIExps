//
//  WahrzeichenRow.swift
//  Landmarks
//
//  Created by Carlos Arenas on 22.01.23.
//  Copyright © 2023 Apple. All rights reserved.
//

import SwiftUI

struct SehenswürdigkeitRow: View {
  var sehenswürdigkeit: Sehenswürdigkeit
  
  var body: some View {
    HStack {
      sehenswürdigkeit.bild
        .resizable()
        .frame(width: 50,  height: 50)
      Text(sehenswürdigkeit.name)
      Spacer()
    }
  }
}

// LEITFADEN: Xcode’s canvas automatically recognizes and displays any type in the current editor that conforms to the PreviewProvider protocol. A preview provider returns one or more views, with options to configure the size and device.
// LEITFADEN: You can customize the returned content from a preview provider to render exactly the previews that are most helpful to you.
struct WahrzeichenRow_Previews: PreviewProvider {
  static var previews: some View {
    
    // LEITFADEN: You can use a Group to return multiple previews from a preview provider. Group is a container for grouping view content. Xcode renders the group’s child views as separate previews in the canvas.
//    Group {
//      SehenswürdigkeitRow(sehenswürdigkeit: sehenswürdigkeiten[3])
//        .previewLayout(.fixed(width: 300, height: 70))
//      SehenswürdigkeitRow(sehenswürdigkeit: sehenswürdigkeiten[1])
//        .previewLayout(.fixed(width: 300, height: 70))
//    }
    // Simplified version
    Group {
      SehenswürdigkeitRow(sehenswürdigkeit: sehenswürdigkeiten[3])
      SehenswürdigkeitRow(sehenswürdigkeit: sehenswürdigkeiten[1])
    }
    // A view’s children inherit the view’s contextual settings, such as preview configurations.
    .previewLayout(.fixed(width: 300, height: 70))
  }
}
