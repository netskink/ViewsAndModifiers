//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by john davis on 11/14/24.
//

import SwiftUI



struct CapsuleText: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.capsule)
    }
}

struct ContentView: View {
    
    
    var body: some View {
        
        VStack {
            CapsuleText(text: "Hello, World!")
            CapsuleText(text: "Hello, me!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
