//
//  ContentView.swift
//  Glowing Button Animation
//
//  Created by Carlos Arenas on 19.05.25.
//

// Guide https://www.youtube.com/watch?v=GFjOuH2Utt4

import SwiftUI

struct ContentView: View {
    
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(AngularGradient(colors: [.teal, .pink, .teal], center: .center, angle: .degrees(isAnimating ? 360 : 0)))
                .frame(width: 260, height: 60)
                .blur(radius: 9)
                .onAppear() {
                    withAnimation(Animation.linear(duration: 4).repeatForever(autoreverses: false)) {
                        self.isAnimating.toggle() // Same as isAnimating = true
                    }
                }
            
            Button {
                // Do nothing
            } label: {
                Text("Glowing Button")
                    .bold()
                    .font(.title3)
                    .fontDesign(.monospaced)
                    .foregroundStyle(.black)
                    .frame(width: 260, height: 60)
                    .background(.teal, in: .rect(cornerRadius: 20, style: .continuous))
                    .overlay {
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .stroke(.gray.opacity(0.5), lineWidth: 1)
                    }
                                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
