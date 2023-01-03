//
//  ContentView.swift
//  Landmarks
//
//  Created by Carlos Arenas on 27.12.22.
//

import SwiftUI

// GUIDE: By default, SwiftUI view files declare two structures. The first structure conforms to the View protocol and describes the view’s content and layout. The second structure declares a preview for that view.

// GUIDE: To customize a SwiftUI view, you call methods called modifiers. Modifiers wrap a view to change its display or other properties. Each modifier returns a new view, so it’s common to chain multiple modifiers, stacked vertically.

// GUIDE: Your code is always the source of truth for the view. When you use the inspector to change or remove a modifier, Xcode updates your code immediately to match.

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .padding()
            
            // GUIDE: When you specify only the height parameter, the view automatically sizes to the width of its content. In this case, MapView expands to fill the available space.
            MapView().frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("München")
                    .font(.title)
                    .foregroundColor(.black)
                HStack {
                    Text("Bavaria").font(.subheadline)
                    Spacer()
                    Text("Deutschland").font(.subheadline)
                }
            }
            .padding()
            
            Text("Geil dinge")
                .foregroundColor(.green)
                .padding()
            
            // Guide: spacer at the bottom of the outer VStack to push the content to the top of the screen.
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
