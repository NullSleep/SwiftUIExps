//
//  ContentView.swift
//  Landmarks
//
//  Created by Carlos Arenas on 27.12.22.
//

import SwiftUI

// LEITFADEN: By default, SwiftUI view files declare two structures. The first structure conforms to the View protocol and describes the view’s content and layout. The second structure declares a preview for that view.

// LEITFADEN: To customize a SwiftUI view, you call methods called modifiers. Modifiers wrap a view to change its display or other properties. Each modifier returns a new view, so it’s common to chain multiple modifiers, stacked vertically.

// LEITFADEN: Your code is always the source of truth for the view. When you use the inspector to change or remove a modifier, Xcode updates your code immediately to match.

struct ContentView: View {
    var body: some View {
        VStack {
          // LEITFADEN: When you specify only the height parameter, the view automatically sizes to the width of its content. In this case, MapView expands to fill the available space.
          // LEITFADEN: To allow the map content to extend to the top edge of the screen, add the ignoresSafeArea(edges: .top) modifier to the map view.
          MapView()
            .ignoresSafeArea(edges: .top)
            .frame(height: 300)
          
          // LEITFADEN: The offset and padding make room for the text by moving the image upwards.
          CircleImage()
            .offset(y: -130)
            .padding(.bottom, -130)
          
          VStack(alignment: .leading) {
            Text("München")
              .font(.title)
              
            HStack {
              Text("Bavaria").font(.subheadline)
              Spacer()
              Text("Deutschland").font(.subheadline)
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
            
            Divider()
            
            Text("Text about München")
              .font(.title2)
            Text("Descriptive text comes here.")
          }
          .padding()
          
          Text("Geil dinge")
            .foregroundColor(.green)
            .padding()
          
          Image(systemName: "globe")
            .imageScale(.large)
            .foregroundColor(.accentColor)
            .padding()
          
          // LEITFADEN: spacer at the bottom of the outer VStack to push the content to the top of the screen.
          Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
