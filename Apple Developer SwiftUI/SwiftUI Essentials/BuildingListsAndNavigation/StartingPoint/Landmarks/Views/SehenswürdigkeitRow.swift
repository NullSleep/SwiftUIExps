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
    SehenswürdigkeitRow(sehenswürdigkeit: sehenswürdigkeiten[0])
  }
}
