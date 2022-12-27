//
//  ContentView.swift
//  Landmarks
//
//  Created by Carlos Arenas on 27.12.22.
//

import SwiftUI

// BOKU: By default, SwiftUI view files declare two structures. The first structure conforms to the View protocol and describes the view’s content and layout. The second structure declares a preview for that view.

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hallo, welt!")
            Text("Geil dinge").foregroundColor(.green)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
