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
//      List {
//        SehenswürdigkeitRow(sehenswürdigkeit: sehenswürdigkeiten[4])
//        SehenswürdigkeitRow(sehenswürdigkeit: sehenswürdigkeiten[2])
//      }
        
      // LEITFADEN: One can create a list that displays the elements of a collection by passing your collection of data and a closure that provides a view for each element in the collection. The list transforms each element in the collection into a child view by using the supplied closure.
      // LEITFADEN: Pass the model data’s landmarks array to the List initializer. Lists work with identifiable data. You can make your data identifiable in one of two ways: by passing along with your data a key path to a property that uniquely identifies each element, or by making your data type conform to the Identifiable protocol.
//      List(sehenswürdigkeiten, id: \.id) { sehenswürdigkeit in
      // LEITFADEN: The Landmark data already has the id (added manually earlier) property required by Identifiable protocol; you only need to add a property to decode it when reading the data.
      List(sehenswürdigkeiten) { sehenswürdigkeit in
        SehenswürdigkeitRow(sehenswürdigkeit: sehenswürdigkeit)
      }
    }
}

struct SehenswürdigkeitList_Previews: PreviewProvider {
    static var previews: some View {
        SehenswürdigkeitList()
    }
}
