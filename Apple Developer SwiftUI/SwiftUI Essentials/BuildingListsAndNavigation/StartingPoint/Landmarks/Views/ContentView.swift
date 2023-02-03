/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the details for a landmark.
*/

import SwiftUI

struct ContentView: View {
    var body: some View {
        // LEITFADEN: You add navigation capabilities to a list by embedding it in a NavigationView, and then nesting each row in a NavigationLink to set up a transtition to a destination view.
        SehenswürdigkeitList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
