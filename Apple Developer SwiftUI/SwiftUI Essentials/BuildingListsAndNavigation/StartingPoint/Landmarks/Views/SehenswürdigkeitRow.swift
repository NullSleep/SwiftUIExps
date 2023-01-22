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
    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
  }
}

struct WahrzeichenRow_Previews: PreviewProvider {
  static var previews: some View {
    SehenswürdigkeitRow(sehenswürdigkeit: sehenswürdigkeiten[0])
  }
}
