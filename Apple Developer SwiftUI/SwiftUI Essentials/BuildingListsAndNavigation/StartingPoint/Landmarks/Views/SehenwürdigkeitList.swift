//
//  LandmarksList.swift
//  Landmarks
//
//  Created by Carlos Arenas on 25.01.23.
//  Copyright © 2023 Apple. All rights reserved.
//

import SwiftUI

// LEITFADEN: When you use SwiftUI’s List type, you can display a platform-specific list of views. The elements of the list can be static, like the child views of the stacks you’ve created so far, or dynamically generated. You can even mix static and dynamically generated views.

struct SehenswürdigkeitList: View {
    var body: some View {
      List {
        SehenswürdigkeitRow(sehenswürdigkeit: sehenswürdigkeiten[4])
        SehenswürdigkeitRow(sehenswürdigkeit: sehenswürdigkeiten[2])
      }
    }
}

struct SehenswürdigkeitList_Previews: PreviewProvider {
    static var previews: some View {
        SehenswürdigkeitList()
    }
}
